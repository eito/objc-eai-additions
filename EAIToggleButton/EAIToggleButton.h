
#import <UIKit/UIKit.h>

@interface EAIToggleButton : UIButton

@property (nonatomic, copy) NSString *onTitle;
@property (nonatomic, strong) UIImage *onImage;
@property (nonatomic, strong) UIColor *onTitleColor;
@property (nonatomic, copy) void(^onHandler)(EAIToggleButton *sender);

@property (nonatomic, copy) NSString *offTitle;
@property (nonatomic, strong) UIImage *offImage;
@property (nonatomic, strong) UIColor *offTitleColor;
@property (nonatomic, copy) void(^offHandler)(EAIToggleButton *sender);

@property (nonatomic, assign) UIControlEvents toggleControlEvents;
@end