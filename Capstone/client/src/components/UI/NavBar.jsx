import { Link } from 'react-router-dom';

const NavBar = () => {
    return (
        <header className="shadow-md sticky top-0 z-50" style={{textShadow: "1px 1px  var(--obsidian) , 2px 2px 1px white", color: "var(--gold)", fontFamily: "var(--butcherman)", backgroundColor: "var(--tavern)"}}>
            <div className="max-w-7xl mx-auto px-4 py-4 flex justify-between items-center">
                <div className="flex items-center space-x-3">

                    <h1 className="text-3xl font-butcherman tracking-wide" >
                        <span className="text-3xl" >🐺</span>
                        Monster Bounty
                    </h1>
                </div>

                <nav className="space-x-6 text-lg font-semibold">
                    <Link to="/" className="hover:text-[silver] transition duration-300">Home</Link>
                    <Link to="/bounties" className="hover:text-[silver] transition duration-300">Bounties</Link>
                    <Link to="/license" className="hover:text-[silver] transition duration-300">Apply</Link>
                </nav>
            </div>
        </header>
    );
};

export default NavBar;
