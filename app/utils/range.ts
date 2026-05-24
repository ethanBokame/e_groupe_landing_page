// Ex: create [1,2,3,4,5]
export const range = (firstItem: number, lastItem: number) => {
  const items = [];

  // Incremented
  if (firstItem < lastItem) {
    for (let i = firstItem; i <= lastItem; i++) {
      items.push(i);
    }
  }

  // Decremented
  if (firstItem > lastItem) {
    for (let i = firstItem; i >= lastItem; i--) {
      items.push(i);
    }
  }

  return items;
};
