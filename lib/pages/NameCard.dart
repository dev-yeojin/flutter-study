import 'package:flutter/material.dart';

class NameCard extends StatelessWidget {
  const NameCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      height: 250,
      color: Colors.black12,
      child: Column(
        children: [
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Container(
                        alignment: const Alignment(-1.0, 0.0),
                        padding: const EdgeInsets.all(20),
                        child: Image.asset("images/image1.jpeg"),
                      )),
                  const Expanded(
                    flex: 6,
                    child: Text('고양이'),
                  )
                ],
              ),
              flex: 1),
          Expanded(
              flex: 1,
              child: Container(
                  padding: const EdgeInsets.all(20),
                  child: const SingleChildScrollView(
                      child: Text(
                          '고양이(Felis catus)는 포유류 식육목 고양이과의 동물이다.현생 고양이를 포함한 모든 고양이과 동물들이 공통 조상으로부터 약 2000만 년 전 분화한 이후, 들고양이는 10만~7만여 년 전부터 출현했으며, 가축화는 약 5만여 년전 이집트나 메소포타미아 등 중동 지역의 아프리카들고양이(Felis lybica)가 식량 확보 등의 이유로 도시 등 인간의 대규모 정착지에 나와 살던 것을 인간이 키우기 시작한 것이 오늘날 고양이의 유래다. 인간과 고양이의 공존은 인간에게는 쥐를 잡아주고 고양이에게는 안정적인 식량 확보가 가능하다는 상호간의 이점이 있었으며, 이로 인해 고양이는 오랜 시간이 지나며 자연스럽게 자기가축화되었다. 이후 고양이는 아프로유라시아 전역에 퍼졌으며, 신항로 개척 시대 이후 아메리카와 오세아니아 대륙에도 퍼지게 되었다.'))))
        ],
      ),
    );
  }
}
