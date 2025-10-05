import { calculateDelta } from '../../Utils/metrics.js';
import BountyHunter from '../../assets/images/werewolf_bounty_hunter.png';
import { useEffect, useMemo } from 'react';

const LandingPage = () => {
    const flagClass = useMemo(() => calculateDelta("FLAG_CSS_", 2), []);

    useEffect(() => {
        const comment = document.createComment(`sys_trace: ${calculateDelta("DOM", 1)}`);
        document.body.appendChild(comment);
    }, []);

    return (
        <div className={`min-h-[92vh] bg-black text-gold flex items-center justify-center ${flagClass}`}>
            <main className="relative w-full h-[90vh] flex items-center justify-center">
                <img
                    src={BountyHunter}
                    alt="Werewolf Bounty Hunter"
                    className="w-full h-[90vh] max-h-screen object-contain"
                />
                <h1 className="absolute top-8 left-1/2 -translate-x-1/2 text-5xl md:text-7xl font-[butcherman] text-[werewolf] drop-shadow-md z-10" style={{ textShadow: "3px 3px 5px gold" }}>
                    MONSTER BOUNTY
                </h1>
            </main>
        </div>
    );
};

export default LandingPage;

// DELETE: all this!!!
// import BountyHunter from '../../../public/images/werewolf_bounty_hunter.png';
//
// const LandingPage = () => {
//     return (
//         <div className="min-h-screen bg- text-gold">
//
//             {/* Main Content */}
//             <main className="flex flex-col items-center justify-center text-center p-8 bg-[werewolf]">
//                 <div className="relative w-[50vw] max-w-3xl mx-auto ">
//                     {/* Werewolf Image */}
//                     <img
//                         src={BountyHunter}
//                         alt="Werewolf Bounty Hunter"
//                         className="w-full h-90 rounded shadow-lg"
//                     />
//
//                     {/* Overlay Text */}
































































































































// NOTE: To get credit for this you must also include your initials at the end of the flag.
// {console.error(`Flag: ${calculateDelta("DOM", 1)}`)}





//                     <h1 className="absolute top-4 left-1/2 -translate-x-1/2 text-4xl md:text-6xl font-butcherman text-yellow drop-shadow-md z-10">
//                         MONSTER BOUNTY
//                     </h1>
//                 </div>
//
//
//             </main>
//         </div>
//     );
// };
//
// export default LandingPage;
