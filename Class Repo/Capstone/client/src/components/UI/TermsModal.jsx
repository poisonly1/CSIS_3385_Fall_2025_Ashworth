export default function TermsModal({ isOpen, onClose }) {
    if (!isOpen) return null;

    return (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex justify-center items-center z-50">
            <div className="bg-white p-6 rounded-lg max-w-lg w-full shadow-lg relative">
                <h2 className="text-xl font-bold mb-4">Monster Slaying Terms & Conditions</h2>
                <p className="mb-4 text-sm">
                    By accepting a Class-B Monster Hunting License issued by the Beast Regulation Authority
                    (BRA), you hereby acknowledge the inherent dangers of tracking, baiting, and eliminating
                    supernatural entities. This license does not authorize cross-realm incursions without a
                    valid dimensional passport. Unauthorized use of time-altering amulets, resurrection scrolls,
                    or necromantic artifacts will result in immediate license revocation and possible banishment
                    to the Eternal Waiting Room™.
                </p>

                <p className="mb-4 text-sm">
                    All hunts involving creatures classified as “Ancient,” “Undead Royalty,” or “Shape-shifting
                    Nobility” must be approved by a regional Huntmaster. Licensees must notify local villagers
                    prior to detonating any enchanted ordnance within 300 meters of a residential thatch zone.
                    Any encounters resulting in lycanthropic bites must be reported within 48 hours, along with
                    full moon tracking logs and proof of silver intake. BRA is not responsible for cursed injuries
                    caused by user negligence, overconfidence, or failure to consult the Codex of Containment.
                </p>

                <p className="mb-4 text-sm">
                    By checking the box on the license application form, you agree to hold harmless the BRA,
                    your assigned Huntmaster, and any affiliated cryptozoological guilds in the event of
                    dismemberment, interdimensional dislocation, or unintentional bonding with eldritch entities.
                    You further agree not to pursue legal action should your soul be partially devoured, misplaced,
                    or auctioned off by demons posing as notaries. Violators of these terms will be subject to
                    exile, bureaucratic hauntings, or compulsory internship in the Realm of Bureaucrats.
                </p>

                <button
                    onClick={onClose}
                    className="absolute top-2 right-2 text-gray-600 hover:text-black text-xl font-bold"
                    aria-label="Close"
                >
                    ×
                </button>
                <button
                    onClick={onClose}
                    className="bg-green-700 text-white px-4 py-2 rounded hover:bg-green-800 mt-4"
                >
                    Got it!
                </button>
            </div>
        </div>
    );
}
