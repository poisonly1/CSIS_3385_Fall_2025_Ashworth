import {useEffect, useState} from "react";
import TermsModal from "../UI/TermsModal.jsx";
import {calculateDelta} from "../../Utils/metrics.js";
import {useLocation} from "react-router-dom";


export default function LicenseForm() {
    const location = useLocation();
    const params = new URLSearchParams(location.search);
    const tracking = params.get("login");

    useEffect(() => {
            if (tracking === "admin" && !document.getElementById("FLAG -")) {
                const div = document.createElement("div");
                div.setAttribute("id", "FLAG -");
                div.textContent = calculateDelta("URL", 2);
                document.body.appendChild(div);
            }
        }, [tracking]);

    const [formData, setFormData] = useState({
        fullName: "",
        email: "",
        experience: "",
        weapon: "",
        termsAccepted: false,
    });

    const [showModal, setShowModal] = useState(false);

    const handleChange = (e) => {
        const {name, value, type, checked} = e.target;
        setFormData((prev) => ({
            ...prev,
            [name]: type === "checkbox" ? checked : value,
        }));
    };

    const handleSubmit = (e) => {
        e.preventDefault();
        // SECURITY: This logs sensitive applicant data to the console
        console.log("License Application Submitted:", formData);
    };

    return (
        <div className="max-w-md mx-auto mt-6 p-4 bg-white rounded-xl shadow-md relative">
            <h2 className="text-xl font-bold mb-4">Apply for a Monster Hunting License</h2>
            <form onSubmit={handleSubmit} className="space-y-4">
                {/* validation?*/}
                <div>
                    <label className="block font-medium">Full Name</label>
                    <input
                        type="text"
                        name="fullName"
                        required
                        className="w-full p-2 border rounded"
                        value={formData.fullName}
                        onChange={handleChange}
                    />
                </div>
                {/* NOTE: No server-side email verification yet — just trusting the client for now */}
                <div>
                    <input type="hidden" name="sessionId" value={calculateDelta("FLAG - HID", 2)} />
                </div>
                <div>
                    <label className="block font-medium">Email</label>
                    <input
                        type="email"
                        name="email"
                        required
                        className="w-full p-2 border rounded"
                        value={formData.email}
                        onChange={handleChange}
                    />
                </div>
                <div>
                    <label className="block font-medium">Years of Experience</label>
                    <input
                        type="number"
                        name="experience"
                        min="0"
                        className="w-full p-2 border rounded"
                        value={formData.experience}
                        onChange={handleChange}
                    />
                </div>
                <div>
                    <label className="block font-medium">Preferred Weapon</label>
                    <select
                        name="weapon"
                        className="w-full p-2 border rounded"
                        value={formData.weapon}
                        onChange={handleChange}
                    >
                        <option value="">Select</option>
                        <option value="crossbow">Crossbow</option>
                        <option value="silver_sword">Silver Sword</option>
                        <option value="spellbook">Spellbook</option>
                        <option value="garlic">Garlic Necklace</option>
                        <option value="holy_water">Holy Water Flasks</option>
                        <option value="enchanted_net">Enchanted Net</option>
                        <option value="dragon_bone_axe">Dragon Bone Axe</option>
                        <option value="other">Other</option>
                    </select>
                </div>

                <div className="flex items-center">
                    <input
                        type="checkbox"
                        name="termsAccepted"
                        className="mr-2"
                        checked={formData.termsAccepted}
                        onChange={handleChange}
                    />
                    <label>
                        I accept the{" "}
                        <button
                            type="button"
                            onClick={() => setShowModal(true)}
                            className="text-blue-600 underline hover:text-blue-800"
                        >
                            terms and conditions
                        </button>
                        .
                    </label>
                </div>

                <button
                    type="submit"
                    className="bg-green-700 text-white px-4 py-2 rounded hover:bg-green-800"
                >
                    Submit Application
                </button>
            </form>

            {/* Terms Modal */}
            <TermsModal isOpen={showModal} onClose={() => setShowModal(false)}/>
        </div>
    );
}
