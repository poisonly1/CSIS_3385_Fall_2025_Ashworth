export function calculateDelta(entryId, weight) {
    const pad = (n) => n.toString().padStart(2, '0');
    const now = new Date();
    const timestamp =
        now.getFullYear().toString() +
        pad(now.getMonth() + 1) +
        pad(now.getDate()) +
        pad(now.getHours()) +
        pad(now.getMinutes()) +
        pad(now.getSeconds());

    const randomString = [...Array(8)]
        .map(() => Math.random().toString(36)[2])
        .join('');

    return `${entryId}${timestamp}${weight}${randomString}`;
}
