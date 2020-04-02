import React from 'react';
import { mount } from 'enzyme';
import Programs from './components/Programs';
import moxios from 'moxios';

beforeEach(() => {
  moxios.install()
  moxios.stubRequest('/api/workouts.json', {
    status: 200,
    response: {
      programs: [
        { objectID: 1, plan: 'Plan #1' }, 
        { objectID: 2, plan: 'Plan #2' }
      ]
    }
  })
})

afterEach(() => {
  moxios.uninstall();
})

it('requests programs from api', done => {
  const wrapped = mount(<Programs />)

  moxios.wait(() => {
    wrapped.update()
    expect(wrapped.find("ul").children().length).toEqual(2);
    expect(
      wrapped
        .find("ul")
        .children()
        .find("#program-1")
        .text()
    ).toEqual("Plan #1");
    expect(
      wrapped
        .find("ul")
        .children()
        .find("#program-2")
        .text()
    ).toEqual("Plan #2");
    done();
  })
});
