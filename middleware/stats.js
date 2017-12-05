// export default function ({ store, error }) {
//   if (store.state.auth_state === false) {
//     return this.$router.push('/')
//   }
// }

export default ({store}) => {
  console.log(store.state)
  if (store.state.auth_state !== null) {
    console.log(1)
  }
}
