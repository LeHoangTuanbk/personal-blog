import { ArrowUpIcon } from '@chakra-ui/icons';
import { IconButton } from '@chakra-ui/react';
import { useEffect, useState } from 'react';

type ScrollToTopProps = {
  bottomOffset?: string;
  rightOffset?: string;
};

const scrollToTop = () => {
  window.scrollTo({ top: 0, behavior: 'smooth' });
};

export const ScrollToTop = ({
  bottomOffset = '20px',
  rightOffset = '20px',
}: ScrollToTopProps) => {
  const [showScrollTop, setShowScrollTop] = useState(false);

  useEffect(() => {
    const sentinel = document.createElement('div');
    sentinel.style.height = '1px';
    sentinel.style.visibility = 'hidden';

    document.querySelector('body')?.appendChild(sentinel);

    const observer = new IntersectionObserver(
      (entries) => {
        entries.forEach((entry) => {
          setShowScrollTop(entry.isIntersecting);
        });
      },
      { threshold: 0.1 },
    );

    observer.observe(sentinel);

    return () => {
      observer.disconnect();
      sentinel.remove();
    };
  }, []);

  return (
    <IconButton
      aria-label="Scroll to top"
      icon={<ArrowUpIcon />}
      onClick={scrollToTop}
      position="fixed"
      bottom={bottomOffset}
      right={rightOffset}
      borderRadius="full"
      colorScheme="gray"
      size="lg"
      opacity="0.8"
      _hover={{ opacity: 1 }}
      display={showScrollTop ? { base: 'flex', md: 'flex' } : 'none'}
    />
  );
};
