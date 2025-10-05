import { calculateDelta } from '../../Utils/metrics';

export default function DebugLogger() {
    return (
        <div style={{ display: "none" }}>
            FLAG - {calculateDelta("DBG", 3)}
        </div>
    );
}
