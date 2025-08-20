import { useLocation } from 'react-router-dom';
import { useEffect, useState } from 'react';
import { calculateDelta } from '../../Utils/metrics';

export default function ErrorPage() {
    const location = useLocation();
    const params = new URLSearchParams(location.search);
    const [showFlag, setShowFlag] = useState(false);

    useEffect(() => {
        const triggers = ['error', 'admin', 'password', 'username'];

        for (const key of triggers) {
            const val = params.get(key);
            if (val === 'debug_mode') {
                setShowFlag(true);
                break;
            }
        }
    }, [location.search]);

    return (
        <div className={"text-white"}>
            <h1>Oops! Something went wrong.</h1>
            {showFlag && (
                <div>
                    <h1>Click here  vvvvvvvvvv</h1>
                    <div style={{ display: 'none' }}>
                        FLAG - {calculateDelta('ERR', 3)}
                    </div>
                </div>

            )}
        </div>
    );
}
