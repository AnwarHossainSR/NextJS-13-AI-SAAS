'use client';

import { Crisp } from 'crisp-sdk-web';
import { useEffect } from 'react';

export const CrispChat = () => {
  useEffect(() => {
    Crisp.configure('bb52fdd2-8b7b-43ae-9410-8db3b7d365a9');
  }, []);

  return null;
};
