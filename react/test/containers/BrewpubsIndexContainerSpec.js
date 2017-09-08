import BrewpubsIndexContainer from '../../src/containers/BrewpubsIndexContainer';
import BrewpubComponent from '../../src/components/BrewpubComponent';

describe('BrewpubsIndexContainer', () => {
  let wrapper;

  beforeEach(() => {
    let response = new window.Response(
      JSON.stringify([
        {
          id: 1,
          name: "Yards Brewing"
        }
      ]), {
        status: 200,
        statusText: 'OK',
        headers: { 'Content-Type': 'application/json'}
      }
    )

    spyOn(global, 'fetch').and.returnValue(Promise.resolve(response))

    wrapper = mount(
      <BrewpubsIndexContainer />
    )
  });

  it('should have a specified initial state', () => {
    expect(wrapper.state()).toEqual({
      brewpubs: []
    })
  })

  it('should have a specified state after fetch', done => {
    setTimeout(() => {
      expect(wrapper.state()).toEqual({
        brewpubs: [{
          id: 1,
          name: "Yards Brewing"
        }]
      })
      done();
    }, 1000)
  })

  it('should render an anchor tag', done => {
    setTimeout(() => {
      expect(wrapper.contains(<h1>Yards Brewing</h1>)).to.equal(true);
    }, 1000)
    done();
  })


})
