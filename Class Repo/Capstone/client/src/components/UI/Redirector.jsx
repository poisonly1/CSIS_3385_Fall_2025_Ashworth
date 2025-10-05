import { useEffect } from 'react';
import { useLocation, useNavigate } from 'react-router-dom';

export default function Redirector() {
    const location = useLocation();
    const navigate = useNavigate();

    useEffect(() => {
        const params = new URLSearchParams(location.search);
        const next = params.get('next');
        if (next) {
            navigate(next, { replace: true });
        }
    }, [location.search, navigate]);

    return <div>Redirecting...</div>;
}
