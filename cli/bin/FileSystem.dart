import 'dart:io';

main(List<String> arguments){
    //asd
    String path = '/';
    var dir = new Directory(path);

    if(dir.existsSync()){
        print('exist');
    } else {
        print('not found');
    }

    var aDir = Directory.systemTemp.createSync();

    print(dir.path);

    if(dir.existsSync()){
        print('Removin $dir');
        dir.deleteSync();
    } else {
        print('Not found $dir.path');
    }

    var currDir = Directory.current;
    print(currDir.path);

    var list = currDir.listSync(recursive: true);

    print('List entries: $list.length');

    list.forEach((element) {
        FileStat stat = element.statSync();
        print('Type: $stat.type');
            });

    var newCUrrDir = Directory.current;

    print(newCUrrDir.path);

    var aFile = new File(newCUrrDir.path + '/myFile.txt');

    writeFile(aFile);

    readFile(aFile);

}


void writeFile(File file){
    // append, write: appen add somethign, write override all
    RandomAccessFile raf = file.openSync(mode: FileMode.APPEND);
    raf.writeStringSync('System io');
    raf.flushSync();
    raf.close();
}

void readFile(File file){
    if(!file.exists()){
        print('not fount');
        return;
    } 

    print('Reading string');
    print(file.readAsLinesSync());
    
}
