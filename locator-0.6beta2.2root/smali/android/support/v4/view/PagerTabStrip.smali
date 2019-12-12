.class public Landroid/support/v4/view/PagerTabStrip;
.super Landroid/support/v4/view/PagerTitleStrip;
.source "PagerTabStrip.java"


# static fields
.field private static final FULL_UNDERLINE_HEIGHT:I = 0x1

.field private static final INDICATOR_HEIGHT:I = 0x3

.field private static final MIN_PADDING_BOTTOM:I = 0x6

.field private static final MIN_STRIP_HEIGHT:I = 0x20

.field private static final MIN_TEXT_SPACING:I = 0x40

.field private static final TAB_PADDING:I = 0x10

.field private static final TAB_SPACING:I = 0x20

.field private static final TAG:Ljava/lang/String; = "PagerTabStrip"


# instance fields
.field private mDrawFullUnderline:Z

.field private mDrawFullUnderlineSet:Z

.field private mFullUnderlineHeight:I

.field private mIgnoreTap:Z

.field private mIndicatorColor:I

.field private mIndicatorHeight:I

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mMinPaddingBottom:I

.field private mMinStripHeight:I

.field private mMinTextSpacing:I

.field private mTabAlpha:I

.field private mTabPadding:I

.field private final mTabPaint:Landroid/graphics/Paint;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v4/view/PagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    move-object v4, v0

    new-instance v5, Landroid/graphics/Paint;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v4, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    .line 62
    move-object v4, v0

    new-instance v5, Landroid/graphics/Rect;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Landroid/support/v4/view/PagerTabStrip;->mTempRect:Landroid/graphics/Rect;

    .line 64
    move-object v4, v0

    const/16 v5, 0xff

    iput v5, v4, Landroid/support/v4/view/PagerTabStrip;->mTabAlpha:I

    .line 66
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 67
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    .line 82
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/view/PagerTabStrip;->mTextColor:I

    iput v5, v4, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    .line 83
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    move v3, v4

    .line 88
    move-object v4, v0

    const/high16 v5, 0x40400000    # 3.0f

    move v6, v3

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/support/v4/view/PagerTabStrip;->mIndicatorHeight:I

    .line 89
    move-object v4, v0

    const/high16 v5, 0x40c00000    # 6.0f

    move v6, v3

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/support/v4/view/PagerTabStrip;->mMinPaddingBottom:I

    .line 90
    move-object v4, v0

    const/high16 v5, 0x42800000    # 64.0f

    move v6, v3

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/support/v4/view/PagerTabStrip;->mMinTextSpacing:I

    .line 91
    move-object v4, v0

    const/high16 v5, 0x41800000    # 16.0f

    move v6, v3

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    .line 92
    move-object v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    move v6, v3

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/support/v4/view/PagerTabStrip;->mFullUnderlineHeight:I

    .line 93
    move-object v4, v0

    const/high16 v5, 0x42000000    # 32.0f

    move v6, v3

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/support/v4/view/PagerTabStrip;->mMinStripHeight:I

    .line 94
    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, v4, Landroid/support/v4/view/PagerTabStrip;->mTouchSlop:I

    .line 97
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/view/PagerTabStrip;->getPaddingLeft()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/view/PagerTabStrip;->getPaddingTop()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/view/PagerTabStrip;->getPaddingRight()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/view/PagerTabStrip;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v4/view/PagerTabStrip;->setPadding(IIII)V

    .line 98
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/view/PagerTabStrip;->getTextSpacing()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v4/view/PagerTabStrip;->setTextSpacing(I)V

    .line 100
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/view/PagerTabStrip;->setWillNotDraw(Z)V

    .line 102
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/PagerTabStrip;->mPrevText:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 103
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/PagerTabStrip;->mPrevText:Landroid/widget/TextView;

    new-instance v5, Landroid/support/v4/view/PagerTabStrip$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v4/view/PagerTabStrip$1;-><init>(Landroid/support/v4/view/PagerTabStrip;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/PagerTabStrip;->mNextText:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 111
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/PagerTabStrip;->mNextText:Landroid/widget/TextView;

    new-instance v5, Landroid/support/v4/view/PagerTabStrip$2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v4/view/PagerTabStrip$2;-><init>(Landroid/support/v4/view/PagerTabStrip;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/view/PagerTabStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_0

    .line 119
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method public getDrawFullUnderline()Z
    .locals 2

    .prologue
    .line 210
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    move v0, v1

    return v0
.end method

.method getMinHeight()I
    .locals 3

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/view/PagerTitleStrip;->getMinHeight()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/view/PagerTabStrip;->mMinStripHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getTabIndicatorColor()I
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    move v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    .line 257
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Landroid/support/v4/view/PagerTitleStrip;->onDraw(Landroid/graphics/Canvas;)V

    .line 259
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/view/PagerTabStrip;->getHeight()I

    move-result v7

    move v2, v7

    .line 260
    move v7, v2

    move v3, v7

    .line 261
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLeft()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    sub-int/2addr v7, v8

    move v4, v7

    .line 262
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getRight()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    add-int/2addr v7, v8

    move v5, v7

    .line 263
    move v7, v3

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/view/PagerTabStrip;->mIndicatorHeight:I

    sub-int/2addr v7, v8

    move v6, v7

    .line 265
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/view/PagerTabStrip;->mTabAlpha:I

    const/16 v9, 0x18

    shl-int/lit8 v8, v8, 0x18

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    const v10, 0xffffff

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    move-object v7, v1

    move v8, v4

    int-to-float v8, v8

    move v9, v6

    int-to-float v9, v9

    move v10, v5

    int-to-float v10, v10

    move v11, v3

    int-to-float v11, v11

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 268
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    if-eqz v7, :cond_0

    .line 269
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    const/high16 v8, -0x1000000

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    const v10, 0xffffff

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/view/PagerTabStrip;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    move v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/view/PagerTabStrip;->mFullUnderlineHeight:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v4/view/PagerTabStrip;->getWidth()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v4/view/PagerTabStrip;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    move v11, v2

    int-to-float v11, v11

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 273
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 220
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    move v2, v5

    .line 221
    move v5, v2

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/view/PagerTabStrip;->mIgnoreTap:Z

    if-eqz v5, :cond_0

    .line 222
    const/4 v5, 0x0

    move v0, v5

    .line 252
    :goto_0
    return v0

    .line 227
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    move v3, v5

    .line 228
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move v4, v5

    .line 229
    move v5, v2

    packed-switch v5, :pswitch_data_0

    .line 252
    :cond_1
    :goto_1
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 231
    :pswitch_0
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroid/support/v4/view/PagerTabStrip;->mInitialMotionX:F

    .line 232
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroid/support/v4/view/PagerTabStrip;->mInitialMotionY:F

    .line 233
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/view/PagerTabStrip;->mIgnoreTap:Z

    .line 234
    goto :goto_1

    .line 237
    :pswitch_1
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/view/PagerTabStrip;->mInitialMotionX:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/view/PagerTabStrip;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_2

    move v5, v4

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/view/PagerTabStrip;->mInitialMotionY:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/view/PagerTabStrip;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 239
    :cond_2
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/view/PagerTabStrip;->mIgnoreTap:Z

    goto :goto_1

    .line 244
    :pswitch_2
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLeft()I

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 245
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/PagerTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/view/PagerTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 246
    :cond_3
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getRight()I

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 247
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/PagerTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/view/PagerTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBackgroundColor(I)V
    .locals 5

    .prologue
    .line 176
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->setBackgroundColor(I)V

    .line 177
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v2, :cond_0

    .line 178
    move-object v2, v0

    move v3, v1

    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 180
    :cond_0
    return-void

    .line 178
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v2, :cond_0

    .line 170
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 172
    :cond_0
    return-void

    .line 170
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 4

    .prologue
    .line 184
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->setBackgroundResource(I)V

    .line 185
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v2, :cond_0

    .line 186
    move-object v2, v0

    move v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 188
    :cond_0
    return-void

    .line 186
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setDrawFullUnderline(Z)V
    .locals 4

    .prologue
    .line 197
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 198
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    .line 199
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/view/PagerTabStrip;->invalidate()V

    .line 200
    return-void
.end method

.method public setPadding(IIII)V
    .locals 10

    .prologue
    .line 152
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v4

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/view/PagerTabStrip;->mMinPaddingBottom:I

    if-ge v5, v6, :cond_0

    .line 153
    move-object v5, v0

    iget v5, v5, Landroid/support/v4/view/PagerTabStrip;->mMinPaddingBottom:I

    move v4, v5

    .line 155
    :cond_0
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/support/v4/view/PagerTitleStrip;->setPadding(IIII)V

    .line 156
    return-void
.end method

.method public setTabIndicatorColor(I)V
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    .line 130
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/view/PagerTabStrip;->invalidate()V

    .line 132
    return-void
.end method

.method public setTabIndicatorColorResource(I)V
    .locals 5

    .prologue
    .line 140
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/view/PagerTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColor(I)V

    .line 141
    return-void
.end method

.method public setTextSpacing(I)V
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/view/PagerTabStrip;->mMinTextSpacing:I

    if-ge v2, v3, :cond_0

    .line 161
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/view/PagerTabStrip;->mMinTextSpacing:I

    move v1, v2

    .line 163
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->setTextSpacing(I)V

    .line 164
    return-void
.end method

.method updateTextPositions(IFZ)V
    .locals 14

    .prologue
    .line 277
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/PagerTabStrip;->mTempRect:Landroid/graphics/Rect;

    move-object v4, v9

    .line 278
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/view/PagerTabStrip;->getHeight()I

    move-result v9

    move v5, v9

    .line 279
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLeft()I

    move-result v9

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    sub-int/2addr v9, v10

    move v6, v9

    .line 280
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getRight()I

    move-result v9

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    add-int/2addr v9, v10

    move v7, v9

    .line 281
    move v9, v5

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/view/PagerTabStrip;->mIndicatorHeight:I

    sub-int/2addr v9, v10

    move v8, v9

    .line 283
    move-object v9, v4

    move v10, v6

    move v11, v8

    move v12, v7

    move v13, v5

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 285
    move-object v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    invoke-super {v9, v10, v11, v12}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 286
    move-object v9, v0

    move v10, v2

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroid/support/v4/view/PagerTabStrip;->mTabAlpha:I

    .line 288
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLeft()I

    move-result v9

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    sub-int/2addr v9, v10

    move v6, v9

    .line 289
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getRight()I

    move-result v9

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    add-int/2addr v9, v10

    move v7, v9

    .line 290
    move-object v9, v4

    move v10, v6

    move v11, v8

    move v12, v7

    move v13, v5

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->union(IIII)V

    .line 292
    move-object v9, v0

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroid/support/v4/view/PagerTabStrip;->invalidate(Landroid/graphics/Rect;)V

    .line 293
    return-void
.end method
