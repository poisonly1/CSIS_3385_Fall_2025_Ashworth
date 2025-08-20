// src/utils/getImageSrc.js

const imageModules = import.meta.glob('../assets/images/*.{png,jpg,jpeg,gif,webp}', {
    eager: true,
    import: 'default'
});

/**
 * @param {string} name - The monster name (e.g., "Fernacopia")
 * @returns {string|null} - Matching image path or null
 */
export function getImageSrc(name) {
    if (!name || name.length < 4) return null;

    const targetPrefix = name.substring(0, 4).toLowerCase();

    for (const [path, fileUrl] of Object.entries(imageModules)) {
        const filename = path.split('/').pop(); // get just the filename
        const filePrefix = filename.substring(0, 4).toLowerCase();

        if (filePrefix === targetPrefix) {
            return fileUrl;
        }
    }

    return null;
}
