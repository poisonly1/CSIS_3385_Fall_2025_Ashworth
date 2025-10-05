// App.jsx
import { BrowserRouter as Router, Routes, Route, Link, useNavigate } from 'react-router-dom';
import LandingPage from "./components/pages/LandingPage.jsx";
import NavBar from "./components/UI/NavBar.jsx";
import LicensePage from "./components/pages/LicensePage.jsx";
import BountiesPage from "./components/UI/BountiesPage.jsx";
import ErrorPage from "./components/pages/ErrorPage.jsx";
import DebugLogger from "./components/UI/DebugLogger.jsx";
import Redirector from "./components/UI/Redirector.jsx";
import SecretFlag from "./components/UI/SecretFlag.jsx";
import {useEffect} from "react";

// Main App component
function App() {
    useEffect(() => {
        const seedToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6Ild5bGllIENveW90ZSIsInJvbGUiOiJjeWJlciJ9.cPcTGrhoU3dMOAI1MyzElt7WtKA_29dj_7FxE6AtrpE"
        localStorage.setItem("jwt", seedToken);
    }, []);
    return (
        <Router>
            <NavBar />
            <Routes>
                <Route path="/" element={<LandingPage />} />
                <Route path="/debug/logger" element={<DebugLogger />} />
                <Route path="/bounties" element={<BountiesPage />} />
                <Route path="/license" element={<LicensePage />} />
                <Route path="/error" element={<ErrorPage />} />
                <Route path="/redirector" element={<Redirector />} />
                <Route path="/secret-flag" element={<SecretFlag />} />
                {/* Catch-all route for unknown paths */}
                <Route path="*" element={<ErrorPage />} />
            </Routes>
        </Router>
    );
}

export default App;
