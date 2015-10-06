//
//  ViewController.m
//  LVTask5
//
//  Created by fpmi on 04.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "LVPrIterator.h"
#import "LVIterator.h"

@interface ViewController (){
    NSMutableArray * dataBasket;
    NSMutableArray * fruitsName;
}

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    AppDelegate * delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    self.basket = delegate.basket;
    
    id <LVPrIterator> iter = [[LVIterator alloc]initWithBasket: self.basket];
    dataBasket = [[NSMutableArray alloc] init];
    fruitsName = [[NSMutableArray alloc] init];
    while([iter hasNext])
    {
        LVFruit * fr = [iter next];
        [dataBasket addObject:[fr information]];
        [fruitsName addObject:[fr getClassName]];
    }
    [iter release];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [dataBasket count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [dataBasket objectAtIndex:indexPath.row];
    NSMutableString *s = [NSMutableString stringWithCapacity:20];
    [s appendFormat:@"%@.jpg",[fruitsName objectAtIndex:indexPath.row]];
    cell.imageView.image = [UIImage imageNamed:s];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    [dataBasket release];
    [fruitsName release];
}

@end
