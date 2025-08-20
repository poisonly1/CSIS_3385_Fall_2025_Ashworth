// import {bounties} from "../../Utils/monsterdata.js";
import React, {useEffect, useState} from "react";
import WantedPoster from "../../assets/images/WantedPoster.png";
import DefaultMonsterImage from "../../assets/images/werewolf_bounty_hunter.png";
import axios from "axios";

import {getImageSrc} from '../../Utils/imageHelper.js';
import {calculateDelta} from "../../Utils/metrics.js";


const BountiesPage = () => {
    const [output, setOutput] = useState("");
    const [bounties, setBounties] = useState([]);
    const [currentIndex, setCurrentIndex] = useState(0);
    const [searchTerm, setSearchTerm] = useState("");

    const fetchBounties = async () => {
        try {
            const response = await axios.get("http://localhost:8080/api/monsters/drakes");
            setBounties(response.data);
            console.log(bounties);
        } catch (error) {
            console.error("Error fetching bounties:", error);
        }
    };

    useEffect(() => {
        fetchBounties();
    }, []);

    useEffect(() => {
        const flag = calculateDelta("FLAG - LCL", 3);
        const encoded = btoa(flag);
        localStorage.setItem("monster_payload", encoded);
    }, []);

    const filteredBounties =
        searchTerm === ""
            ? bounties.slice(0, 1) // Only show first bounty on load
            : bounties.filter((b) =>
                b.name.toLowerCase().includes(searchTerm.toLowerCase())
            );

    const current = bounties[currentIndex];

    if (bounties.length === 0) {
        return <div className="text-white p-10">Loading bounty board...</div>;
    }

    const handleSubmit = (e) => {
        e.preventDefault();
        const value = e.target.elements.inputBox.value;
        if (value.toLowerCase().includes("password")) {
            setOutput(`<div class='reveal'>Flag - PAS${calculateDelta("", 2)}</div>`);
        } else {
            setOutput(`<p>You entered: ${value}</p>`);
        }
    };

    return (
        <div
            className="h-[92vh] overflow-hidden bg-gradient-to-br from-gray-900 to-black px-6 py-6 text-white flex gap-6">
            {/* LEFT: Wanted Poster */}
            <div className="flex flex-col items-center w-1/2">
                <h1 className="text-4xl font-bold text-yellow-300 mb-4">🗡️ Bounty Board 🐉</h1>
                <div
                    className="relative w-[400px] h-[85vh] bg-no-repeat bg-cover"
                    style={{backgroundImage: `url(${WantedPoster})`}}
                >
                    <img
                        src={current.imageSrc ? current.imageSrc : DefaultMonsterImage}
                        alt={current.name}
                        className="absolute top-[17vh] left-[45px] w-[310px] h-[45vh] object-cover border-2 border-black"
                    />
                    <div className="absolute bottom-[110px] w-full text-center text-xl font-bold text-brown-900 px-4">
                        {current.name}
                    </div>
                    <div className="absolute bottom-[60px] w-full text-center px-4 text-sm text-brown-800 italic">
                        {current.description}
                    </div>
                    <div className="absolute bottom-[20px] w-full text-center text-lg font-semibold text-red-800">
                        Reward: {current.bountyDrakes} 𝔇
                    </div>
                </div>

                <div className="mt-4 flex gap-4">
                    <button
                        onClick={() =>
                            setCurrentIndex((prev) => (prev === 0 ? bounties.length - 1 : prev - 1))
                        }
                        className="bg-yellow-700 hover:bg-yellow-600 px-4 py-2 rounded shadow"
                    >
                        ⏴ PREV
                    </button>
                    <button
                        onClick={() =>
                            setCurrentIndex((prev) => (prev === bounties.length - 1 ? 0 : prev + 1))
                        }
                        className="bg-yellow-700 hover:bg-yellow-600 px-4 py-2 rounded shadow"
                    >
                        NEXT ⏵️
                    </button>
                </div>
            </div>

            {/* RIGHT: Search + Scrollable Thumbnails */}
            <div className="w-1/2 flex flex-col">
                <form onSubmit={handleSubmit}>
                    <input
                        name="inputBox"
                        type="text"
                        placeholder="Search monsters..."
                        value={searchTerm}
                        onChange={(e) => setSearchTerm(e.target.value)}
                        className="p-2 rounded bg-gray-800 text-white border border-gray-600 mb-4"
                    />
                    {/*<input name="inputBox" placeholder="Type something..." />*/}
                    {/*<button type="submit">Submit</button>*/}
                    <div dangerouslySetInnerHTML={{__html: output}}/>
                </form>

                {/*<FlagForm/>*/}
                {/* HACK: Quick patch — this should be rewritten? */}
                <div className="overflow-y-auto h-[85vh] grid grid-cols-2 gap-4 pr-2">
                    {filteredBounties.map((bounty, index) => {
                            bounty.imageSrc = getImageSrc(bounty.name);
                            return <div
                                key={index}
                                className="cursor-pointer hover:scale-105 transition"
                                onClick={() => setCurrentIndex(bounties.indexOf(bounty))}
                            >
                                <img
                                    src={bounty.imageSrc ? bounty.imageSrc : DefaultMonsterImage}
                                    alt={bounty.name}
                                    className="w-full h-36 object-cover rounded border-2 border-yellow-800"
                                />
                                <p className="mt-1 text-center text-sm">{bounty.name}</p>
                            </div>
                        }
                    )}
                </div>
            </div>
        </div>
    );
};

export default BountiesPage;
