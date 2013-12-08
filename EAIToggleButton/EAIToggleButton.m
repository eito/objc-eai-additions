#import "EAIToggleButton.h"

@interface EAIToggleButton () {
    BOOL _toggleOn;
}
@end

@implementation EAIToggleButton

-(id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

-(void)setOnTitle:(NSString *)onTitle {
    _onTitle = onTitle;
    [self updateTitle];
}

-(void)setOnImage:(UIImage *)onImage {
    _onImage = onImage;
    [self updateTitle];
}

-(void)setOnTitleColor:(UIColor *)onTitleColor {
    _onTitleColor = onTitleColor;
    [self updateTitle];
}

-(void)setOffTitle:(NSString *)offTitle {
    _offTitle = offTitle;
    [self updateTitle];
}

-(void)setOffImage:(UIImage *)offImage {
    _offImage = offImage;
    [self updateTitle];
}

-(void)setOffTitleColor:(UIColor *)offTitleColor {
    _offTitleColor = offTitleColor;
    [self updateTitle];
}

-(void)setToggleControlEvents:(UIControlEvents)toggleControlEvents {
    [self removeTarget:self action:@selector(btnClicked:) forControlEvents:_toggleControlEvents];
    _toggleControlEvents = toggleControlEvents;
    [self addTarget:self action:@selector(btnClicked:) forControlEvents:_toggleControlEvents];
}

-(void)updateTitle {
    [self setTitle:nil forState:UIControlStateNormal];
    [self setImage:nil forState:UIControlStateNormal];
    if (_toggleOn) {
        if (self.onImage) {
            [self setImage:_onImage forState:UIControlStateNormal];
        }
        else {
            [self setTitle:_onTitle forState:UIControlStateNormal];
            [self setTitleColor:_onTitleColor forState:UIControlStateNormal];
        }
    }
    else {
        if (self.offImage) {
            [self setImage:_offImage forState:UIControlStateNormal];
        }
        else {
            [self setTitle:_offTitle forState:UIControlStateNormal];
            [self setTitleColor:_offTitleColor forState:UIControlStateNormal];

        }
    }
}

-(void)btnClicked:(id)sender {
    _toggleOn = !_toggleOn;
    [self updateTitle];
    if (_toggleOn) {
        if (self.onHandler) self.onHandler(self);
    }
    else {
        if (self.offHandler) self.offHandler(self);
    }
}
@end