// Detect mobile device
export const isMobile = () => {
  if (import.meta.server) return false  // Return false if we are in SSR

  return window.innerWidth < 768
}