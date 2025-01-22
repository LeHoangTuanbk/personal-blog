import './index.css';

import { ToastContainer } from 'react-toastify';

import { AllPageWrapper } from '@shared/ui/components';

import { Providers } from './providers';

export const App = () => {
  return (
    <AllPageWrapper>
      <Providers />
      <ToastContainer />
    </AllPageWrapper>
  );
};

export default App;
