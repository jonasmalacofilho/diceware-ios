#include <stdlib.h>
#import "ViewController.h"

@interface ViewController ()
@property NSArray* words;
@property (weak, nonatomic) IBOutlet UITextField* wordBox;
@end

@implementation ViewController

- (void)loadDictionary {
    NSString* path = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"txt"];
    NSLog(@"dictionary asset path: %@", path);
    NSString* data = [NSString stringWithContentsOfFile:path];
    self.words = [data componentsSeparatedByString:@"\n"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadDictionary];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)generate:(UIButton *)sender {
    int r = arc4random_uniform(7776);
    self.wordBox.text = self.words[r];
}

@end
