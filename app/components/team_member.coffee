module.exports = App.TeamMemberComponent = Ember.Component.extend
  tagName: 'div'
  classNames: ['person']
  avatar: (->
    fileName = @get('name').toLowerCase().replace(/\./g, '').replace(/[\'\s]+/g, '_').replace('é', 'e').replace('á', 'a')
    "images/avatars/#{ fileName }.png"
  ).property('name')
