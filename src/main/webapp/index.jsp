
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Success</title>

<style>
    *{
        margin:0;
        padding:0;
        box-sizing:border-box;
        font-family:Arial, Helvetica, sans-serif;
    }

    body{
        height:100vh;
        display:flex;
        justify-content:center;
        align-items:center;
        background:linear-gradient(135deg,#74ebd5,#ACB6E5);
        overflow:hidden;
    }

    .card{
        background:white;
        padding:40px;
        border-radius:20px;
        text-align:center;
        box-shadow:0 10px 30px rgba(0,0,0,0.2);
        width:340px;
    }

    h1{
        color:#333;
        margin-bottom:10px;
    }

    p{
        color:#666;
        margin-bottom:20px;
    }

    button{
        padding:14px 28px;
        border:none;
        border-radius:30px;
        background:#ff4d6d;
        color:white;
        font-size:18px;
        cursor:pointer;
        transition:0.3s;
    }

    button:hover{
        transform:scale(1.08);
        background:#ff1e4d;
    }

    #message{
        margin-top:25px;
        font-size:22px;
        font-weight:bold;
        color:green;
        min-height:50px;
    }

    .emoji{
        position:absolute;
        font-size:30px;
        animation:fall 3s linear forwards;
    }

    @keyframes fall{
        from{
            transform:translateY(-80px) rotate(0deg);
            opacity:1;
        }
        to{
            transform:translateY(110vh) rotate(720deg);
            opacity:0;
        }
    }

    .shake{
        animation:shake 0.4s;
    }

    @keyframes shake{
        0%,100%{transform:translateX(0);}
        20%{transform:translateX(-10px);}
        40%{transform:translateX(10px);}
        60%{transform:translateX(-10px);}
        80%{transform:translateX(10px);}
    }
</style>
</head>

<body>

<div class="card" id="card">
    <h1>Success Machine</h1>
    <p>Click the button... if you dare!</p>

    <button onclick="success()">CLICK ME</button>

    <div id="message"></div>
</div>

<script>

const funnyMessages = [
"Mission Successful! NASA wants your number! ",
"Success Level: LEGENDARY ",
"You clicked like a PRO Hacker!",
"Achievement Unlocked: Button Destroyer!",
"Success! Pizza is on the way... (Just kidding )",
"Congratulations! You're officially a Genius!"
];

function success(){

    const msg = document.getElementById("message");
    const card = document.getElementById("card");

    // Random funny message
    msg.innerHTML = funnyMessages[Math.floor(Math.random()*funnyMessages.length)];

    // Shake effect
    card.classList.add("shake");
    setTimeout(()=>card.classList.remove("shake"),400);

    // Confetti Emojis
    const emojis = ["- _ -","- _ -","- _ -","- _ -","- _ -","- _ -","- _ -","- _ -","- _ -","- _ -"];

    for(let i=0;i<40;i++){
        let e = document.createElement("div");
        e.className="emoji";
        e.innerHTML=emojis[Math.floor(Math.random()*emojis.length)];
        e.style.left=Math.random()*100+"vw";
        e.style.animationDuration=(2+Math.random()*2)+"s";
        e.style.fontSize=(20+Math.random()*25)+"px";
        document.body.appendChild(e);

        setTimeout(()=>e.remove(),4000);
    }

    // Funny popup
    setTimeout(()=>{
        alert("SUCCESS! You have officially pressed the most powerful button on Earth!!");
    },500);
}

</script>

</body>
</html>