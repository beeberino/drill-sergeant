import React from 'react';
import {Link} from 'react-router-dom';
import { mount } from 'enzyme';
import App from './App';

it('renders Programs link', () => {
  const wrapped = mount(<App />)

  const linkWrapper = wrapped.find(Link)
  expect(linkWrapper.text()).toContain("Programs");
  expect(linkWrapper.prop('to')).toEqual("/programs");
});
