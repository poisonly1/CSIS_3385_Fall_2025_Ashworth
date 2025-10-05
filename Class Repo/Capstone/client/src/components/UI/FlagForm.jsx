import { useState } from 'react';
import { calculateDelta } from '../../Utils/metrics.js';

export default function FlagForm() {
    const [output, setOutput] = useState("");

    const handleSubmit = (e) => {
        e.preventDefault();
        const value = e.target.elements.inputBox.value;
        if (value.toLowerCase().includes("password")) {
            setOutput(`<div class='reveal'>Flag - ${calculateDelta("", 2)}</div>`);
        } else {
            setOutput(`<p>You entered: ${value}</p>`);
        }
    };

    return (
        <form onSubmit={handleSubmit}>
            <input name="inputBox" placeholder="Type something..." />
            <button type="submit">Submit</button>
            <div dangerouslySetInnerHTML={{ __html: output }} />
        </form>
    );
}
