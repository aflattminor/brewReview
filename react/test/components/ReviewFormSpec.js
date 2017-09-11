import ReviewForm from '../../src/components/ReviewForm'

describe('ReviewForm', () => {
  let wrapper;

  describe('ReviewForm is shown', () => {
    beforeEach(() => {
      onClickSpy = jasmine.createSpy('onClick Spy')
      wrapper = mount(
        <ReviewForm
          brewpubId={this.state.brewpub.id}
          submitFunction={onClickSpy}
        />
      )
    })

  })
})
