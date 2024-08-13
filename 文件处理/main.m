//
//  main.m
//  文件处理
//
//  Created by HuiPuKui on 2024/8/13.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    // 举例
    // 检查路径中是否存在文件
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    // Get documents directory
    NSArray *directoryPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectoryPath = [directoryPaths objectAtIndex:0];
    NSLog(@"%@", directoryPaths);
    NSLog(@"%@", documentsDirectoryPath);
    if ([fileManager fileExistsAtPath:@""] == YES) {
        NSLog(@"File exists");
    }
    
    // 比较两个文件内容
    if ([fileManager contentsEqualAtPath:@"FilePath1" andPath:@"FilePath2"]) {
        NSLog(@"Same content");
    }
    
    // 检查是否可写，可读和可执行
    if ([fileManager isWritableFileAtPath:@"FilePath"]) {
        NSLog(@"isWritable");
    }
    
    if ([fileManager isReadableFileAtPath:@"FilePath"]) {
        NSLog(@"isReadable");
    }
    
    if ([fileManager isExecutableFileAtPath:@"FilePath"]) {
        NSLog(@"is Executable");
    }
    
    // 移动文件
    if ([fileManager moveItemAtPath:@"FilePath1" toPath:@"FilePath2" error:NULL]) {
        NSLog(@"Moved successfully");
    }
    
    // 拷贝文件
    if ([fileManager copyItemAtPath:@"FilePath" toPath:@"FilePath2" error:NULL]) {
        NSLog(@"Copied successfully");
    }
    
    // 删除文件
    if ([fileManager removeItemAtPath:@"FilePath" error:NULL]) {
        NSLog(@"Removed successfully");
    }
    
    // 读取文件
    NSData *data = [fileManager contentsAtPath:@"Path"];
    
    // 写文件
    [fileManager createFileAtPath:@"" contents:data attributes:nil];
    
    return 0;
}
