import { calculateDelta } from '../../Utils/metrics';

export default function SecretFlag() {
    return (
        <div style={{ display: 'none' }}>
            REDIRECTED: FLAG - {calculateDelta("RED", 3)}
        </div>
    );
}
