import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gloabals/list.dart';

class ProPage extends StatefulWidget {
  const ProPage({super.key});

  @override
  State<ProPage> createState() => _ProPageState();
}

class _ProPageState extends State<ProPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff333C4D),
      appBar: AppBar(
        backgroundColor: const Color(0xff333C4D),
        title: Row(
          children: [
            Icon(
              Icons.arrow_forward,
              color: const Color(0xff737786),
              size: 18.sp,
            ),
            SizedBox(
              width: 15.w,
            ),
            Icon(
              Icons.refresh,
              color: Colors.white.withOpacity(0.8),
              size: 18.sp,
            ),
            SizedBox(
              width: 15.w,
            ),
            Container(
              height: 28.h,
              width: 1120.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xff1D2636),
              ),
              child: Padding(
                padding: EdgeInsets.all(2.sp),
                child: Row(
                  children: [
                    SizedBox(
                      width: 5.w,
                    ),
                    CircleAvatar(
                      radius: 9.sp,
                      backgroundImage: const NetworkImage(
                        "https://static.vecteezy.com/system/resources/previews/013/760/951/original/colourful-google-logo-in-dark-background-free-vector.jpg",
                      ),
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    Text(
                      "Serch Google or type a URL",
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    SizedBox(
                      width: 895.h,
                    ),
                    Icon(
                      Icons.star_outline,
                      size: 17.sp,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Icon(
              Icons.pending,
              size: 17.sp,
              color: Colors.white.withOpacity(0.8),
            ),
            SizedBox(
              width: 25.w,
            ),
            Icon(
              Icons.edit_calendar_sharp,
              size: 17.sp,
              color: Colors.white.withOpacity(0.8),
            ),
            SizedBox(
              width: 25.w,
            ),
            Icon(
              Icons.camera_alt_rounded,
              size: 17.sp,
              color: Colors.white.withOpacity(0.8),
            ),
            SizedBox(
              width: 25.w,
            ),
            Icon(
              Icons.extension_outlined,
              size: 17.sp,
              color: Colors.white.withOpacity(0.8),
            ),
            SizedBox(
              width: 15.w,
            ),
            Text(
              "|",
              style: TextStyle(
                color: Colors.white.withOpacity(0.2),
                fontSize: 16.sp,
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            CircleAvatar(
              radius: 10.h,
              backgroundImage: const NetworkImage(
                "https://avatars.githubusercontent.com/u/132036737?v=4",
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            Icon(
              Icons.more_vert,
              size: 20.sp,
              color: Colors.white.withOpacity(0.8),
            ),
          ],
        ),
        leading: Icon(
          Icons.arrow_back,
          color: const Color(0xff737786),
          size: 18.sp,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Gmail",
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 17.h,
              ),
              Text(
                "Images",
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 17.h,
              ),
              const Icon(
                Icons.science_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 17.h,
              ),
              const Icon(
                Icons.apps_rounded,
                color: Colors.white,
              ),
              SizedBox(
                width: 17.h,
              ),
              CircleAvatar(
                radius: 17.h,
                backgroundImage: const NetworkImage(
                  "https://avatars.githubusercontent.com/u/132036737?v=4",
                ),
              ),
              SizedBox(
                width: 17.h,
              ),
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Container(
            height: 160.h,
            width: 275.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                10.sp,
              ),
              image: const DecorationImage(
                image: NetworkImage(
                  "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAfQAAADICAMAAAApx+PaAAADAFBMVEUAAADq7fT9/f38/P39/f39/f39/f7+/v7r8Pnw8/r////////////19fbg4+TAxse6u7ymp6iZmpuztbW9wsL////+/v6JioteX2IkJCUAAAAZGhtHSEpvcHHs7On////9/v/Y3d6Rk5Q/QUEMDxI2ODlXWVl4eXqAgYMJBwefoKEYEg2srq/IzM3n5/Dx9v79+/cvLi/+/v7v7/br6/Tk5e74+v5maGpOUVPU19fO0dQSRSgeZDYyfUwxtWwcnGEoHRWEfVkrwXK/uaHiz4/cx3trWFCZhGnAqHf85J6zlVDRuVbDoFqjoVB5qGVvmF5ImVvSrnj/+W/+52vpxl/WwGaqlHU4Jh+5lFafrMNcQUF1RkGbgUKCcUGjW0CbXlijY13AbkvSaGdKMTGJUkm9gXurf4eRbXRNQCbZr129i5r6srj+ucP0qaKsaGKvi0XOp1zKioTgmp+qbXpVvHJdg1Sd5YKZ2X2Sy3iFznR+uW7moqzZko2+nVB/XF//+cur2pjRzb1lVSuro4ji4tcvaK0pYqU1cLwZR4oNITnE1vt7q+1WjPFBiupGmf07heMVL1A6fdMpbtAfQG7qXhjO2ezTmab87ez7+Ojx6MZ0YzBCc8vqqrP43NwtVIz2yszT4v0pfebHkqDz0zfvtr62w931tQD93Urboq3OpabK3P328Nr2vgDl1qLs4LbohID5jYrmdGzIcne3bWnriIHZfX2Vw/jb6v7B1Ps/Mgnq8Prhf4FTgN+Yfxvk8f/OskPHqTLivS1Nede8zOpKPg5FOgvEoyOkiR1WRgxYShFXSQ5YSg5dThBaTA9XSA7Xsia0liBRQw1XSRBZSg3oowDYkwBiUhM3LAhLOQCOdRhYSQ5ZSg6ufQBQQgx3YxZdThK4kADBnROCbBfDoiG7lQK+mQtPQg680fvBnx3QrSRrWhRhiLbJpyNXSQ5SRQ1OQAtWSA6hghqwq5qtlB7R0dHq7vLr7e8EjugDfMrG0+3G1vbE1vvD1fvE1vvE1vvS0tJNoQmkAAABAHRSTlMADTBTan2Nm0Id1/L////////////mqf//////////uv///////////////////////8r//////////////////////f/////////////////////////////////+//////////////////////////////////////////////////7//////////////////////////////////////////////////////////////////////v///////////////9j//xQHicXr103/////mv///5v//7Fv/3n//////////yH///////9fLjzy3m+rtOnI//8yY3+kx+KOVkRyUAAAYbZJREFUeAHs1td2omAUhmHsbfNjwfaJERBbEnASwF6m3v8tDZg16BCnHELWfs44ftf3s6VEYYwxxhhjjDHGGGMsk83lC4Vi6UYhX65IHxPL5Aqlao3uqVVL+az0sbBKOVe69JaFUm803zRaqpAp0i7lMtIHwSr5ThhcVrq9PuIG2rCpPkTdy1L6sUx+pBPphjlGyOpPtGlv1mya89lsONUWuNAef3Uf5aR0Y5VCm0g0e08AJr35s2obzpJufBKt7nSAwMtMoYvXNGdnmWKN3Ob4krTXMBzH8dyA5zi+48qrqLwumusJgL75kPLsLN8me70ArE23tXV84Xhh7ze+7wefsk4RWd0A6G0pNErlv52VR3TJqJmKIYTveVHwWPjr4rdzC+jtKFRK3yXPirTbANawbhhb4UQTvxfela9zN5+AnkGBdsreeFZ+lWeANVOM3U6833g8vCfr1+wWMBSpGzsrUL0PDBXD/kfyKLvjRHN35wugexl7XkoJVhl9WgNaS9j2/ySP5h793B+GwEudAq980KVDua30MTDFTjGi5P+X3dWjk04DhhQqSmnAT3sX0Gyh2r7r3OO5Ie9edueavWFhYlBgVJGSjp92eQPMxU7d3pm5uwyjrkI6LQOx+P5NdqFh0aJAm5/4pD/tRh+DZ6GohvuueJBb1JuzqRYYTxu+IXzPJdJd7zb79aKbAyaF+J5LsjypFjTbUJX40+7p5DVmYwtXlmUNXiZrU/GIlt69i64BNClQlRKLFcNMa2Nbjzdfkm7PXxAa7Pf7w+FwPOytBd70e4+CyL296OhNC+iGN7yUVKxEJjATdrz5irzHMQLW/ni6dT6fw/gArN6zS3o096h6F5gT6Um95dgobG76YXPvt5X73T6Az1++nL9+/Xp673zp3p/tiLz41rtAl6ee8OZCUW3nprlLbncAPA13377/OJ5DpyB9PP5x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",
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Container(
            height: 35.h,
            width: 450.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(2.sp),
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    Icons.search,
                    size: 17.sp,
                    color: Colors.black.withOpacity(0.8),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "Serch Google or type a URL",
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  SizedBox(
                    width: 190.w,
                  ),
                  CircleAvatar(
                    radius: 11.sp,
                    backgroundColor: Colors.white,
                    backgroundImage: const NetworkImage(
                        "https://static.vecteezy.com/system/resources/previews/028/766/367/original/google-mic-microphone-icon-symbol-free-png.png"),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  CircleAvatar(
                    radius: 13.sp,
                    backgroundColor: Colors.white,
                    backgroundImage: const NetworkImage(
                        "https://static.vecteezy.com/system/resources/previews/028/766/354/original/google-camera-lens-icon-symbol-free-png.png"),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...pro1.map(
                (e) => Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xff44474E),
                        radius: 25.w,
                        child: Image.network(
                          e['image'],
                          height: 25.h,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        e['name'],
                        style: TextStyle(color: Colors.white, fontSize: 10.sp),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...pro2.map(
                (e) => Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 25.w,
                        backgroundColor: const Color(0xff44474E),
                        child: Image.network(
                          e['image'],
                          height: 25.h,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        e['name'],
                        style: TextStyle(color: Colors.white, fontSize: 10.sp),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 55.w,
              ),
              Padding(
                padding: EdgeInsets.only(right: 12.sp),
                child: Column(
                  children: [
                    Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: const BoxDecoration(
                        color: Color(0xff1E477E),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      "Add Shortcut",
                      style: TextStyle(color: Colors.white, fontSize: 10.sp),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 70.h,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 40.h,
                width: 200.w,
                decoration: BoxDecoration(
                  color: const Color(0xff1E477E),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: const Offset(0.4, 0.4),
                      spreadRadius: 1.sp,
                      blurRadius: 1.sp,
                    ),
                    BoxShadow(
                      color: const Color(0xff1E477E),
                      offset: const Offset(-0.4, -0.4),
                      spreadRadius: 1.sp,
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      const Color(0xff1E477E),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit,
                        color: Colors.white.withOpacity(0.7),
                        size: 20.sp,
                      ),
                      SizedBox(
                        width: 7.sp,
                      ),
                      const Text(
                        "Customize Chorme",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
