function Home({ user }) {
    if (user) {
      return (
      <div>
        <h1>Hello, {user.username}</h1>
        <img className="profile-image" src={user.imageUrl} />
      </div>
      )
    } else {
      return <h1>Please Login or Sign Up</h1>;
    }
  }
  
  export default Home;