npm <template>
    <div class="container">
        <section class="formContainer">
            <div v-if="isEdit === true">
                <img :src="movieImage"/>
            </div>
            <form class="formMovie" @submit.prevent="addNewMovie">
                <div class="firstBlockForm">
                    <article>
                        <label for="movieTitle">Title</label><br>
                        <input v-model="movieTitle" id="movieDesc" placeholder="title" type="text" />
                    </article>
                    <article>
                        <label for="movieImage">Image Url</label><br>
                        <input type="text" v-model="movieImage" placeholder="url image" id="movieImage"/>
                    </article>
                </div>
                <div>
                    <label for="movieDesc">Description</label><br>
                    <textarea  v-model="movieDesc" placeholder="description" id="movieTitle"></textarea>
                </div>
                <div>
                    <button v-if="this.isEdit === false" type="submit" class="addBtn">Add +</button>
                    <button v-else type="button" @click="updateMovie()" class="updateBtn">Update</button>
                    <button v-if="this.isEdit === true" type="button" @click="cancelEdit()" class="cancelEdit" >Cancel</button>
                </div>
            </form>
        </section>


        <div class="movieContainer">
            <div class="movieCard" v-for="(movie) in movies" :key="movie.id" :title="movie.title">
                <h2>{{movie.title}}</h2>
                <div class="forImage">
                    <img :src="movie.image">
                </div>
                <article style="padding: 20px 0px">
                    <span style="text-decoration: lightgray underline; cursor: pointer; "
                               @click="seeMore(movie.id)">
                    See more</span>
                </article>
                <!--<article class="descMovie">{{movie.description}}</article>-->
                <div class="forButton">
                    <button @click="editMovie(movie.title, movie.description, movie.image, movie.id)" class="editBtn">Edit</button>
                    <button @click="deleteMovie(movie.id)" class="deleteBtn">Delete</button>

                </div>
            </div>
        </div>
        <section v-if="showMovie === true" class="shadow">

        </section>
        <div v-if="showMovie === true" class="oneMovie">
            <div style="text-align: right">
                <button class="cancelEdit" @click="cancelSeeMore">X</button>
            </div>
            <h1>{{oneMovie.title}}</h1>
            <div class="insideMovie">
                <img :src="oneMovie.image">
                <div class="descMovie">
                    <article style="font-weight: bold">
                        Description :
                    </article>
                    <p>{{oneMovie.description}}</p>
                    <form class="formComment" @submit.prevent="createComment(oneMovie.id)">
                        <div style="padding: 10px 0px 10px 0px;">
                            <label>Name</label><br>
                            <input type="text" v-model="nameComment" placeholder="Your name"/>
                        </div>

                        <div style="padding: 10px 0px 10px 0px;">
                            <label>Comment</label><br>
                            <textarea v-model="textComment" placeholder="Your comment"></textarea>
                        </div>
                        <button class="addBtn" type="submit">Comment</button>
                    </form>
                    <div class="commentary" v-for="(comment) in comments">
                        <article>
                            <span style="font-weight: bold">{{comment.name}}</span>
                            <span>at :{{comment.created_at}}</span>
                        </article>
                        <p>{{comment.body}}</p>
                    </div>
                </div>
            </div>

        </div>
    </div>
</template>


<style>


    .formComment input, .formComment textarea{
        width: 100%;
        padding: 5px 0px 5px 5px;
        box-shadow: 0px 0px 5px lightgray;
        border-radius: 3px;
        border: none;
        outline: none;
        margin-top: 5px;
    }

    .formComment textarea{
        height: 50px;
    }


    .commentary{
        padding: 10px 0px 10px 0px;
    }

    .formContainer{
        display: flex;
        width: 95vw;
        margin: 20px auto 0px auto;
    }

    .formContainer img{
        max-width: 200px;
    }
    .shadow{
        width: 100vw;
        height: 100vh;
        position: fixed;
        top: 0;
        left: 0;
        background: linear-gradient(124deg, rgba(0,0,0,0.41360294117647056) 100%, rgba(0,0,0,0) 100%);
    }

    .oneMovie{
        width: 70vw;
        height: 80vh;
        overflow: scroll;
        left: 15vw;
        top: 30px;
        position: fixed;
        box-shadow: 0px 0px 10px lightgray;
        background: white;
        padding: 15px;
        border-radius: 10px;
    }

    .oneMovie img{
        max-width: 300px;
        max-height: 300px;
    }

    .insideMovie{
        display: flex;
        justify-content: space-around;
    }

    .formMovie{
        width: 90vw;
        margin: auto;
        padding: 15px;
    }




    .firstBlockForm{
        display: flex;
        justify-content: space-between;
        padding-bottom: 15px;

    }

    .firstBlockForm article{
        width: 45%;
    }

    .firstBlockForm article input{
        width: 97%;
        padding: 5px 0px 5px 5px;
        border-radius: 5px;
        border: none;
        outline: none;
        box-shadow: 0px 0px 4px lightgray;

    }

    .formMovie textarea{
        width: 99%;
        height: 100px;
        border-radius: 5px;
        padding: 5px 0px 5px 5px;
        border: none;
        outline: none;
        box-shadow: 0px 0px 4px lightgray;


    }


    .movieContainer{
        display: flex;
        flex-wrap: wrap;
        width: 90vw;
        margin: auto;
        justify-content: center;
        padding-top: 30px;
    }


    .movieCard{
        margin: 10px;
        border-radius: 8px;
        box-shadow: 0px 0px 4px lightgray;
        padding: 10px;
        width: 20vw;
    }

    .movieCard h2{
        text-align: center;
    }

    .descMovie{
        padding: 10px;
    }

    .movieCard img{
        width: 100%;
        height: 300px;
        object-fit: cover;

    }

    .forImage{
        text-align: center;
    }

    .forButton{
        padding: 10px 0px 10px 0px;
    }

    .editBtn{
        background: #1d68a7;
    }

    .deleteBtn, .cancelEdit{
        background: #ff5044;
    }

    .addBtn{
        background: #2d995b;
    }

    .updateBtn {
        background: #1d68a7;
    }

    .editBtn, .deleteBtn, .addBtn, .updateBtn, .cancelEdit{
        color: white;
        padding: 10px 15px 10px 15px;
        border-radius: 5px;
        outline: none;
        font-size: 80%;
        border: none;

    }

    @media screen and (max-width: 800px) {

        .movieCard{
            width: 70vw;
            margin: 30px 10px 10px 10px;

        }

        .oneMovie{
            width: auto;
            height: 100vh;
            top: 0;
            left: 0;
            overflow-y: scroll;
        }

        .oneMovie img{
            width: 200px;
            height: 300px;
        }


        .movieCard img{
            height: auto;
        }
        .firstBlockForm{
            flex-direction: column;
        }

        .insideMovie{
            flex-direction: column;
        }
    }
</style>


<script>

    import axios from 'axios'


    function scrollToTop() {

        return   window.scrollTo({top: 0, behavior: 'smooth'});

    }

    export default {


        data(){
            return{
                movies: [],
                id: '',
                movieTitle: '',
                movieDesc: '',
                movieImage: '',
                isEdit: false,
                showMovie: false,
                oneMovie: {},
                nameComment: '',
                textComment: '',
                comments : [],
            }
        },

        mounted() {

            this.getMovies()

            this.getComments()
        },

        methods: {


            seeMore(id){
                axios({method :'GET', url:`/api/movie/${id}`}).then(
                    result => {
                        console.log(result.data)
                        this.showMovie = true

                        this.oneMovie = result.data
                        console.log(this.oneMovie)
                        document.querySelector('body').style.overflow = "hidden"
                    },
                    error =>{
                        console.log(error)
                    }
                )


                axios({method :'GET', url:`/api/comment/${id}`}).then(
                    result => {
                        console.log(result.data)
                        this.comments = result.data
                    },
                    error =>{
                        console.log(error)
                    }
                )

            },


            createComment(id){
                console.log(id)
                axios.post('api/comment', {id_movie: id, name: this.nameComment, body: this.textComment}).then( res => {
                    this.nameComment = ''
                    this.textComment = ''

                    this.getComments(id)
                    console.log(res)
                })
                    .catch(er => {
                        console.log(er)
                    })
            },

            cancelSeeMore(){
                this.showMovie = false
                this.oneMovie = {}
                this.comments = []
                document.querySelector('body').style.overflow = "auto"

            },

            getMovies(){
                axios({method :'GET', url:'/api/movies'}).then(
                    result => {
                        console.log(result.data)
                        this.movies = result.data
                    },
                    error =>{
                        console.log(error)
                    }
                )
            },


            getComments(id){
                axios({method :'GET', url:`/api/comment/${id}`}).then(
                    result => {
                        console.log(result.data)
                        this.comments = result.data
                    },
                    error =>{
                        console.log(error)
                    }
                )
            },

            addNewMovie(){
                axios.post('api/movie', {title: this.movieTitle, description: this.movieDesc, image:this.movieImage}).then( res => {
                    this.movieTitle = ''
                    this.movieDesc = ''
                    this.movieImage = ''

                    this.getMovies()
                    console.log(res)
                })
                    .catch(er => {
                        console.log(er)
                    })
            },

            editMovie(title, description, image, id){
                this.id = id
                this.movieTitle = title
                this.movieDesc = description
                this.movieImage = image
                this.isEdit = true
                scrollToTop()
            },


            cancelEdit(){
                this.id = ''
                this.movieTitle = ''
                this.movieDesc = ''
                this.movieImage = ''
                this.isEdit = false
            },

            updateMovie(){
                axios.put(`/api/movie/${this.id}`,
                    {title: this.movieTitle, description: this.movieDesc, image: this.movieImage})
                    .then(res => {
                        this.movieTitle = ''
                        this.movieDesc = ''
                        this.movieImage = ''
                        this.isEdit = false

                        this.getMovies()
                        console.log(res)
                    })

                    .catch(err =>{
                        console.log(err)
                    })
            },

            deleteMovie(id){
                axios.delete(`/api/movie/${id}`)
                    .then(res=>{
                        this.movieTitle = ''
                        this.movieDesc = ''
                        this.movieImage = ''

                        this.getMovies()
                        console.log(res)
                    })

                    .catch(err => {
                        console.log(err)
                    })

            }
        }


    }
</script>
