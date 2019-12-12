.class public Landroid/support/v4/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SlidingPaneLayout$1;,
        Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;,
        Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;,
        Landroid/support/v4/widget/SlidingPaneLayout$SavedState;,
        Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;,
        Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;,
        Landroid/support/v4/widget/SlidingPaneLayout$SimplePanelSlideListener;,
        Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FADE_COLOR:I = -0x33333334

.field private static final DEFAULT_OVERHANG_SIZE:I = 0x20

.field static final IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SlidingPaneLayout"


# instance fields
.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field private final mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsUnableToDrag:Z

.field private final mOverhangSize:I

.field private mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

.field private mParallaxBy:I

.field private mParallaxOffset:F

.field private final mPostedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPreservedOpenState:Z

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mSlideOffset:F

.field private mSlideRange:I

.field private mSlideableView:Landroid/view/View;

.field private mSliderFadeColor:I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 194
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    move v0, v1

    .line 195
    move v1, v0

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 196
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;-><init>()V

    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    .line 202
    :goto_0
    return-void

    .line 197
    :cond_0
    move v1, v0

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 198
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;-><init>()V

    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_0

    .line 200
    :cond_1
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;-><init>()V

    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 246
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 247
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 250
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 251
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 14

    .prologue
    .line 254
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    move-object v6, v0

    const v7, -0x33333334

    iput v7, v6, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 184
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 186
    move-object v6, v0

    new-instance v7, Landroid/graphics/Rect;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 188
    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    .line 256
    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    move v4, v6

    .line 257
    move-object v6, v0

    const/high16 v7, 0x42000000    # 32.0f

    move v8, v4

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    .line 259
    move-object v6, v1

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    move-object v5, v6

    .line 261
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->setWillNotDraw(Z)V

    .line 263
    move-object v6, v0

    new-instance v7, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 264
    move-object v6, v0

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 266
    move-object v6, v0

    move-object v7, v0

    const/high16 v8, 0x3f000000    # 0.5f

    new-instance v9, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/support/v4/widget/SlidingPaneLayout$1;)V

    invoke-static {v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 267
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 268
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/high16 v7, 0x43c80000    # 400.0f

    move v8, v4

    mul-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 269
    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/widget/SlidingPaneLayout;)Z
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$1000(Landroid/support/v4/widget/SlidingPaneLayout;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/widget/SlidingPaneLayout;)F
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move v0, v1

    return v0
.end method

.method static synthetic access$400(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$502(Landroid/support/v4/widget/SlidingPaneLayout;Z)Z
    .locals 7

    .prologue
    .line 90
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$600(Landroid/support/v4/widget/SlidingPaneLayout;I)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->onPanelDragged(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v4/widget/SlidingPaneLayout;)I
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    move v0, v1

    return v0
.end method

.method static synthetic access$900(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    return-void
.end method

.method private closePane(Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 795
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v3, :cond_0

    move-object v3, v0

    const/4 v4, 0x0

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 796
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 797
    const/4 v3, 0x1

    move v0, v3

    .line 799
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private dimChildView(Landroid/view/View;FI)V
    .locals 14

    .prologue
    .line 892
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v4, v8

    .line 894
    move v8, v2

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    move v8, v3

    if-eqz v8, :cond_3

    .line 895
    move v8, v3

    const/high16 v9, -0x1000000

    and-int/2addr v8, v9

    const/16 v9, 0x18

    ushr-int/lit8 v8, v8, 0x18

    move v5, v8

    .line 896
    move v8, v5

    int-to-float v8, v8

    move v9, v2

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v6, v8

    .line 897
    move v8, v6

    const/16 v9, 0x18

    shl-int/lit8 v8, v8, 0x18

    move v9, v3

    const v10, 0xffffff

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    move v7, v8

    .line 898
    move-object v8, v4

    iget-object v8, v8, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-nez v8, :cond_0

    .line 899
    move-object v8, v4

    new-instance v9, Landroid/graphics/Paint;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, v8, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    .line 901
    :cond_0
    move-object v8, v4

    iget-object v8, v8, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move v11, v7

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v8

    .line 902
    move-object v8, v1

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    .line 903
    move-object v8, v1

    const/4 v9, 0x2

    move-object v10, v4

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9, v10}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 905
    :cond_1
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    .line 914
    :cond_2
    :goto_0
    return-void

    .line 906
    :cond_3
    move-object v8, v1

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v8

    if-eqz v8, :cond_2

    .line 907
    move-object v8, v4

    iget-object v8, v8, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-eqz v8, :cond_4

    .line 908
    move-object v8, v4

    iget-object v8, v8, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v8

    .line 910
    :cond_4
    new-instance v8, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    move-object v11, v1

    invoke-direct {v9, v10, v11}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    move-object v5, v8

    .line 911
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 912
    move-object v8, v0

    move-object v9, v5

    invoke-static {v8, v9}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 400
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 401
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 402
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 404
    :goto_1
    return v0

    .line 402
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 404
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method private invalidateChildRegion(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 958
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;->invalidateChildRegion(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 959
    return-void
.end method

.method private onPanelDragged(I)V
    .locals 8

    .prologue
    .line 876
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v2, v4

    .line 877
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    move-object v5, v2

    iget v5, v5, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    move v3, v4

    .line 879
    move-object v4, v0

    move v5, v1

    move v6, v3

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, v4, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 881
    move-object v4, v0

    iget v4, v4, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v4, :cond_0

    .line 882
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-direct {v4, v5}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 885
    :cond_0
    move-object v4, v2

    iget-boolean v4, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v4, :cond_1

    .line 886
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 888
    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/SlidingPaneLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    .line 889
    return-void
.end method

.method private openPane(Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 803
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v3, :cond_0

    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 804
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 805
    const/4 v3, 0x1

    move v0, v3

    .line 807
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private parallaxOtherViews(F)V
    .locals 14

    .prologue
    .line 1038
    move-object v0, p0

    move v1, p1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v2, v10

    .line 1039
    move-object v10, v2

    iget-boolean v10, v10, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v10, :cond_1

    move-object v10, v2

    iget v10, v10, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    if-gtz v10, :cond_1

    const/4 v10, 0x1

    :goto_0
    move v3, v10

    .line 1040
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v10

    move v4, v10

    .line 1041
    const/4 v10, 0x0

    move v5, v10

    :goto_1
    move v10, v5

    move v11, v4

    if-ge v10, v11, :cond_3

    .line 1042
    move-object v10, v0

    move v11, v5

    invoke-virtual {v10, v11}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v6, v10

    .line 1043
    move-object v10, v6

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne v10, v11, :cond_2

    .line 1041
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1039
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 1045
    :cond_2
    const/high16 v10, 0x3f800000    # 1.0f

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v7, v10

    .line 1046
    move-object v10, v0

    move v11, v1

    iput v11, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    .line 1047
    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v1

    sub-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v8, v10

    .line 1048
    move v10, v7

    move v11, v8

    sub-int/2addr v10, v11

    move v9, v10

    .line 1050
    move-object v10, v6

    move v11, v9

    invoke-virtual {v10, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1052
    move v10, v3

    if-eqz v10, :cond_0

    .line 1053
    move-object v10, v0

    move-object v11, v6

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v13, v0

    iget v13, v13, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float/2addr v12, v13

    move-object v13, v0

    iget v13, v13, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    invoke-direct {v10, v11, v12, v13}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    goto :goto_2

    .line 1056
    :cond_3
    return-void
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 19

    .prologue
    .line 1070
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v12, v1

    instance-of v12, v12, Landroid/view/ViewGroup;

    if-eqz v12, :cond_1

    .line 1071
    move-object v12, v1

    check-cast v12, Landroid/view/ViewGroup;

    move-object v6, v12

    .line 1072
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getScrollX()I

    move-result v12

    move v7, v12

    .line 1073
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getScrollY()I

    move-result v12

    move v8, v12

    .line 1074
    move-object v12, v6

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    move v9, v12

    .line 1076
    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v10, v12

    :goto_0
    move v12, v10

    if-ltz v12, :cond_1

    .line 1079
    move-object v12, v6

    move v13, v10

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v11, v12

    .line 1080
    move v12, v4

    move v13, v7

    add-int/2addr v12, v13

    move-object v13, v11

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    if-lt v12, v13, :cond_0

    move v12, v4

    move v13, v7

    add-int/2addr v12, v13

    move-object v13, v11

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v13

    if-ge v12, v13, :cond_0

    move v12, v5

    move v13, v8

    add-int/2addr v12, v13

    move-object v13, v11

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    if-lt v12, v13, :cond_0

    move v12, v5

    move v13, v8

    add-int/2addr v12, v13

    move-object v13, v11

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    if-ge v12, v13, :cond_0

    move-object v12, v0

    move-object v13, v11

    const/4 v14, 0x1

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v7

    add-int v16, v16, v17

    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v17, v5

    move/from16 v18, v8

    add-int v17, v17, v18

    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {v12 .. v17}, Landroid/support/v4/widget/SlidingPaneLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1084
    const/4 v12, 0x1

    move v0, v12

    .line 1089
    :goto_1
    return v0

    .line 1076
    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 1089
    :cond_1
    move v12, v2

    if-eqz v12, :cond_2

    move-object v12, v1

    move v13, v3

    neg-int v13, v13

    invoke-static {v12, v13}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    :goto_2
    move v0, v12

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    goto :goto_2
.end method

.method public canSlide()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 862
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move v0, v1

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .prologue
    .line 1114
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public closePane()Z
    .locals 4

    .prologue
    .line 843
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    .line 988
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 989
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v1, :cond_0

    .line 990
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 996
    :goto_0
    return-void

    .line 994
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 996
    :cond_1
    goto :goto_0
.end method

.method dispatchOnPanelClosed(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 343
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v2, :cond_0

    .line 344
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelClosed(Landroid/view/View;)V

    .line 346
    :cond_0
    move-object v2, v0

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 347
    return-void
.end method

.method dispatchOnPanelOpened(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 336
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v2, :cond_0

    .line 337
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpened(Landroid/view/View;)V

    .line 339
    :cond_0
    move-object v2, v0

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 340
    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 330
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v2, :cond_0

    .line 331
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-interface {v2, v3, v4}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    .line 333
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    .line 1020
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    move-object v9, v1

    invoke-super {v8, v9}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1022
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_1

    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    :goto_0
    move-object v2, v8

    .line 1023
    move-object v8, v2

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_2

    .line 1035
    :cond_0
    :goto_1
    return-void

    .line 1022
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1028
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    move v3, v8

    .line 1029
    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    move v4, v8

    .line 1030
    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move v5, v8

    .line 1031
    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    move v6, v8

    .line 1032
    move v8, v4

    move v9, v3

    sub-int/2addr v8, v9

    move v7, v8

    .line 1033
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    move v9, v7

    move v10, v5

    move v11, v4

    move v12, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1034
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1035
    goto :goto_1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 15

    .prologue
    .line 918
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v5, v9

    .line 920
    move-object v9, v1

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->save(I)I

    move-result v9

    move v7, v9

    .line 922
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v9, :cond_0

    move-object v9, v5

    iget-boolean v9, v9, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-nez v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 924
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v9

    .line 925
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 926
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-result v9

    .line 929
    :cond_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_1

    .line 930
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-wide v12, v3

    invoke-super {v9, v10, v11, v12, v13}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    move v6, v9

    .line 952
    :goto_0
    move-object v9, v1

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 954
    move v9, v6

    move v0, v9

    return v0

    .line 932
    :cond_1
    move-object v9, v5

    iget-boolean v9, v9, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v9, :cond_4

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    .line 933
    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v9

    if-nez v9, :cond_2

    .line 934
    move-object v9, v2

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 936
    :cond_2
    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v8, v9

    .line 937
    move-object v9, v8

    if-eqz v9, :cond_3

    .line 938
    move-object v9, v1

    move-object v10, v8

    move-object v11, v2

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    int-to-float v11, v11

    move-object v12, v2

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    int-to-float v12, v12

    move-object v13, v5

    iget-object v13, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 939
    const/4 v9, 0x0

    move v6, v9

    .line 944
    :goto_1
    goto :goto_0

    .line 941
    :cond_3
    const-string v9, "SlidingPaneLayout"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "drawChild: child view "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " returned null drawing cache"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 942
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-wide v12, v3

    invoke-super {v9, v10, v11, v12, v13}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    move v6, v9

    goto :goto_1

    .line 945
    :cond_4
    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 946
    move-object v9, v2

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 948
    :cond_5
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-wide v12, v3

    invoke-super {v9, v10, v11, v12, v13}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    move v6, v9

    goto/16 :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 1102
    move-object v0, p0

    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    .prologue
    .line 1119
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 1107
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getCoveredFadeColor()I
    .locals 2

    .prologue
    .line 322
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    move v0, v1

    return v0
.end method

.method public getParallaxDistance()I
    .locals 2

    .prologue
    .line 289
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move v0, v1

    return v0
.end method

.method public getSliderFadeColor()I
    .locals 2

    .prologue
    .line 305
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    move v0, v1

    return v0
.end method

.method isDimmed(Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 1093
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    .line 1094
    const/4 v3, 0x0

    move v0, v3

    .line 1097
    :goto_0
    return v0

    .line 1096
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v2, v3

    .line 1097
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v3, :cond_1

    move-object v3, v2

    iget-boolean v3, v3, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isOpen()Z
    .locals 3

    .prologue
    .line 853
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSlideable()Z
    .locals 2

    .prologue
    .line 872
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move v0, v1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 409
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 410
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 411
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    .prologue
    .line 415
    move-object v0, p0

    move-object v4, v0

    invoke-super {v4}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 416
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 418
    const/4 v4, 0x0

    move v1, v4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    :goto_0
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 419
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    move-object v3, v4

    .line 420
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->run()V

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 423
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .prologue
    .line 695
    move-object v0, p0

    move-object v1, p1

    move-object v9, v1

    invoke-static {v9}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v9

    move v2, v9

    .line 698
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v9, :cond_0

    move v9, v2

    if-nez v9, :cond_0

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    .line 700
    move-object v9, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v3, v9

    .line 701
    move-object v9, v3

    if-eqz v9, :cond_0

    .line 702
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    move-object v13, v1

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 707
    :cond_0
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v9, :cond_1

    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v9, :cond_3

    move v9, v2

    if-eqz v9, :cond_3

    .line 708
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 709
    move-object v9, v0

    move-object v10, v1

    invoke-super {v9, v10}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    move v0, v9

    .line 750
    :goto_1
    return v0

    .line 702
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 712
    :cond_3
    move v9, v2

    const/4 v10, 0x3

    if-eq v9, v10, :cond_4

    move v9, v2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 713
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 714
    const/4 v9, 0x0

    move v0, v9

    goto :goto_1

    .line 717
    :cond_5
    const/4 v9, 0x0

    move v3, v9

    .line 719
    move v9, v2

    packed-switch v9, :pswitch_data_0

    .line 748
    :cond_6
    :goto_2
    :pswitch_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    move v4, v9

    .line 750
    move v9, v4

    if-nez v9, :cond_7

    move v9, v3

    if-eqz v9, :cond_8

    :cond_7
    const/4 v9, 0x1

    :goto_3
    move v0, v9

    goto :goto_1

    .line 721
    :pswitch_1
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 722
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    move v4, v9

    .line 723
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    move v5, v9

    .line 724
    move-object v9, v0

    move v10, v4

    iput v10, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 725
    move-object v9, v0

    move v10, v5

    iput v10, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 727
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move v11, v4

    float-to-int v11, v11

    move v12, v5

    float-to-int v12, v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 729
    const/4 v9, 0x1

    move v3, v9

    goto :goto_2

    .line 735
    :pswitch_2
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    move v4, v9

    .line 736
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    move v5, v9

    .line 737
    move v9, v4

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move v6, v9

    .line 738
    move v9, v5

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move v7, v9

    .line 739
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v9

    move v8, v9

    .line 740
    move v9, v6

    move v10, v8

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    move v9, v7

    move v10, v6

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    .line 741
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 742
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 743
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_1

    .line 750
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 719
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 29

    .prologue
    .line 607
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v24, v6

    move/from16 v25, v4

    sub-int v24, v24, v25

    move/from16 v8, v24

    .line 608
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v24

    move/from16 v9, v24

    .line 609
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v24

    move/from16 v10, v24

    .line 610
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v24

    move/from16 v11, v24

    .line 612
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v24

    move/from16 v12, v24

    .line 613
    move/from16 v24, v9

    move/from16 v13, v24

    .line 614
    move/from16 v24, v13

    move/from16 v14, v24

    .line 616
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 617
    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    const/high16 v25, 0x3f800000    # 1.0f

    :goto_0
    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 620
    :cond_0
    const/16 v24, 0x0

    move/from16 v15, v24

    :goto_1
    move/from16 v24, v15

    move/from16 v25, v12

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    .line 621
    move-object/from16 v24, v2

    move/from16 v25, v15

    invoke-virtual/range {v24 .. v25}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v16, v24

    .line 623
    move-object/from16 v24, v16

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 620
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 617
    :cond_1
    const/16 v25, 0x0

    goto :goto_0

    .line 627
    :cond_2
    move-object/from16 v24, v16

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object/from16 v17, v24

    .line 629
    move-object/from16 v24, v16

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    move/from16 v18, v24

    .line 630
    const/16 v24, 0x0

    move/from16 v19, v24

    .line 632
    move-object/from16 v24, v17

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 633
    move-object/from16 v24, v17

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v24, v0

    move-object/from16 v25, v17

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v20, v24

    .line 634
    move/from16 v24, v14

    move/from16 v25, v8

    move/from16 v26, v10

    sub-int v25, v25, v26

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v24

    move/from16 v25, v13

    sub-int v24, v24, v25

    move/from16 v25, v20

    sub-int v24, v24, v25

    move/from16 v21, v24

    .line 636
    move-object/from16 v24, v2

    move/from16 v25, v21

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    .line 637
    move-object/from16 v24, v17

    move/from16 v25, v13

    move-object/from16 v26, v17

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v26, v21

    add-int v25, v25, v26

    move/from16 v26, v18

    const/16 v27, 0x2

    div-int/lit8 v26, v26, 0x2

    add-int v25, v25, v26

    move/from16 v26, v8

    move/from16 v27, v10

    sub-int v26, v26, v27

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_3

    const/16 v25, 0x1

    :goto_3
    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 639
    move/from16 v24, v13

    move/from16 v25, v21

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v17

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    add-int v24, v24, v25

    move/from16 v13, v24

    .line 647
    :goto_4
    move/from16 v24, v13

    move/from16 v25, v19

    sub-int v24, v24, v25

    move/from16 v20, v24

    .line 648
    move/from16 v24, v20

    move/from16 v25, v18

    add-int v24, v24, v25

    move/from16 v21, v24

    .line 649
    move/from16 v24, v11

    move/from16 v22, v24

    .line 650
    move/from16 v24, v22

    move-object/from16 v25, v16

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    add-int v24, v24, v25

    move/from16 v23, v24

    .line 651
    move-object/from16 v24, v16

    move/from16 v25, v20

    move/from16 v26, v11

    move/from16 v27, v21

    move/from16 v28, v23

    invoke-virtual/range {v24 .. v28}, Landroid/view/View;->layout(IIII)V

    .line 653
    move/from16 v24, v14

    move-object/from16 v25, v16

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getWidth()I

    move-result v25

    add-int v24, v24, v25

    move/from16 v14, v24

    goto/16 :goto_2

    .line 637
    :cond_3
    const/16 v25, 0x0

    goto :goto_3

    .line 640
    :cond_4
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 641
    const/high16 v24, 0x3f800000    # 1.0f

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v19, v24

    .line 642
    move/from16 v24, v14

    move/from16 v13, v24

    goto :goto_4

    .line 644
    :cond_5
    move/from16 v24, v14

    move/from16 v13, v24

    goto :goto_4

    .line 656
    :cond_6
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    .line 657
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v24, v0

    if-eqz v24, :cond_a

    .line 658
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 659
    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 661
    :cond_7
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    .line 662
    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v26, v0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    move/from16 v27, v0

    invoke-direct/range {v24 .. v27}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 670
    :cond_8
    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/support/v4/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    .line 673
    :cond_9
    move-object/from16 v24, v2

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 674
    return-void

    .line 666
    :cond_a
    const/16 v24, 0x0

    move/from16 v15, v24

    :goto_5
    move/from16 v24, v15

    move/from16 v25, v12

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_8

    .line 667
    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move/from16 v26, v15

    invoke-virtual/range {v25 .. v26}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    move/from16 v27, v0

    invoke-direct/range {v24 .. v27}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 666
    add-int/lit8 v15, v15, 0x1

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 31

    .prologue
    .line 427
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v25, v3

    invoke-static/range {v25 .. v25}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    move/from16 v5, v25

    .line 428
    move/from16 v25, v3

    invoke-static/range {v25 .. v25}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    move/from16 v6, v25

    .line 429
    move/from16 v25, v4

    invoke-static/range {v25 .. v25}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    move/from16 v7, v25

    .line 430
    move/from16 v25, v4

    invoke-static/range {v25 .. v25}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    move/from16 v8, v25

    .line 432
    move/from16 v25, v5

    const/high16 v26, 0x40000000    # 2.0f

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 433
    new-instance v25, Ljava/lang/IllegalStateException;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    const-string v27, "Width must have an exact value or MATCH_PARENT"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 434
    :cond_0
    move/from16 v25, v7

    if-nez v25, :cond_1

    .line 435
    new-instance v25, Ljava/lang/IllegalStateException;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    const-string v27, "Height must not be UNSPECIFIED"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 438
    :cond_1
    const/16 v25, 0x0

    move/from16 v9, v25

    .line 439
    const/16 v25, -0x1

    move/from16 v10, v25

    .line 440
    move/from16 v25, v7

    sparse-switch v25, :sswitch_data_0

    .line 449
    :goto_0
    const/16 v25, 0x0

    move/from16 v11, v25

    .line 450
    const/16 v25, 0x0

    move/from16 v12, v25

    .line 451
    move/from16 v25, v6

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v26

    sub-int v25, v25, v26

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v26

    sub-int v25, v25, v26

    move/from16 v13, v25

    .line 452
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v25

    move/from16 v14, v25

    .line 454
    move/from16 v25, v14

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_2

    .line 455
    const-string v25, "SlidingPaneLayout"

    const-string v26, "onMeasure: More than two child views are not supported."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    .line 459
    :cond_2
    move-object/from16 v25, v2

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 463
    const/16 v25, 0x0

    move/from16 v15, v25

    :goto_1
    move/from16 v25, v15

    move/from16 v26, v14

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    .line 464
    move-object/from16 v25, v2

    move/from16 v26, v15

    invoke-virtual/range {v25 .. v26}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v16, v25

    .line 465
    move-object/from16 v25, v16

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object/from16 v17, v25

    .line 467
    move-object/from16 v25, v16

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 468
    move-object/from16 v25, v17

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 463
    :cond_3
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 442
    :sswitch_0
    move/from16 v25, v8

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v26

    sub-int v25, v25, v26

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v26

    sub-int v25, v25, v26

    move/from16 v29, v25

    move/from16 v25, v29

    move/from16 v26, v29

    move/from16 v10, v26

    move/from16 v9, v25

    .line 443
    goto/16 :goto_0

    .line 445
    :sswitch_1
    move/from16 v25, v8

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v26

    sub-int v25, v25, v26

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v26

    sub-int v25, v25, v26

    move/from16 v10, v25

    goto/16 :goto_0

    .line 472
    :cond_4
    move-object/from16 v25, v17

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v25, v0

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-lez v25, :cond_5

    .line 473
    move/from16 v25, v11

    move-object/from16 v26, v17

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v11, v25

    .line 477
    move-object/from16 v25, v17

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v25, v0

    if-nez v25, :cond_5

    goto :goto_2

    .line 481
    :cond_5
    move-object/from16 v25, v17

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    move-object/from16 v26, v17

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v19, v25

    .line 482
    move-object/from16 v25, v17

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v25, v0

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 483
    move/from16 v25, v6

    move/from16 v26, v19

    sub-int v25, v25, v26

    const/high16 v26, -0x80000000

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v18, v25

    .line 493
    :goto_3
    move-object/from16 v25, v17

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v25, v0

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 494
    move/from16 v25, v10

    const/high16 v26, -0x80000000

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v20, v25

    .line 501
    :goto_4
    move-object/from16 v25, v16

    move/from16 v26, v18

    move/from16 v27, v20

    invoke-virtual/range {v25 .. v27}, Landroid/view/View;->measure(II)V

    .line 502
    move-object/from16 v25, v16

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    move/from16 v21, v25

    .line 503
    move-object/from16 v25, v16

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    move/from16 v22, v25

    .line 505
    move/from16 v25, v7

    const/high16 v26, -0x80000000

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    move/from16 v25, v22

    move/from16 v26, v9

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_6

    .line 506
    move/from16 v25, v22

    move/from16 v26, v10

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(II)I

    move-result v25

    move/from16 v9, v25

    .line 509
    :cond_6
    move/from16 v25, v13

    move/from16 v26, v21

    sub-int v25, v25, v26

    move/from16 v13, v25

    .line 510
    move/from16 v25, v12

    move-object/from16 v26, v17

    move/from16 v27, v13

    if-gez v27, :cond_b

    const/16 v27, 0x1

    :goto_5
    move-object/from16 v29, v26

    move/from16 v30, v27

    move/from16 v26, v30

    move-object/from16 v27, v29

    move/from16 v28, v30

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    or-int v25, v25, v26

    move/from16 v12, v25

    .line 511
    move-object/from16 v25, v17

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3

    .line 512
    move-object/from16 v25, v2

    move-object/from16 v26, v16

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    goto/16 :goto_2

    .line 485
    :cond_7
    move-object/from16 v25, v17

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 486
    move/from16 v25, v6

    move/from16 v26, v19

    sub-int v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v18, v25

    goto/16 :goto_3

    .line 489
    :cond_8
    move-object/from16 v25, v17

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v18, v25

    goto/16 :goto_3

    .line 495
    :cond_9
    move-object/from16 v25, v17

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 496
    move/from16 v25, v10

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v20, v25

    goto/16 :goto_4

    .line 498
    :cond_a
    move-object/from16 v25, v17

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v20, v25

    goto/16 :goto_4

    .line 510
    :cond_b
    const/16 v27, 0x0

    goto/16 :goto_5

    .line 517
    :cond_c
    move/from16 v25, v12

    if-nez v25, :cond_d

    move/from16 v25, v11

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-lez v25, :cond_1c

    .line 518
    :cond_d
    move/from16 v25, v6

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v15, v25

    .line 520
    const/16 v25, 0x0

    move/from16 v16, v25

    :goto_6
    move/from16 v25, v16

    move/from16 v26, v14

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_1c

    .line 521
    move-object/from16 v25, v2

    move/from16 v26, v16

    invoke-virtual/range {v25 .. v26}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v17, v25

    .line 523
    move-object/from16 v25, v17

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    .line 520
    :cond_e
    :goto_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 527
    :cond_f
    move-object/from16 v25, v17

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object/from16 v18, v25

    .line 529
    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v25, v0

    if-nez v25, :cond_11

    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v25, v0

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-lez v25, :cond_11

    const/16 v25, 0x1

    :goto_8
    move/from16 v19, v25

    .line 530
    move/from16 v25, v19

    if-eqz v25, :cond_12

    const/16 v25, 0x0

    :goto_9
    move/from16 v20, v25

    .line 531
    move/from16 v25, v12

    if-eqz v25, :cond_16

    move-object/from16 v25, v17

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_16

    .line 532
    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v25, v0

    if-gez v25, :cond_e

    move/from16 v25, v20

    move/from16 v26, v15

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_10

    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v25, v0

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-lez v25, :cond_e

    .line 536
    :cond_10
    move/from16 v25, v19

    if-eqz v25, :cond_15

    .line 539
    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v25, v0

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_13

    .line 540
    move/from16 v25, v10

    const/high16 v26, -0x80000000

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v21, v25

    .line 553
    :goto_a
    move/from16 v25, v15

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v22, v25

    .line 555
    move-object/from16 v25, v17

    move/from16 v26, v22

    move/from16 v27, v21

    invoke-virtual/range {v25 .. v27}, Landroid/view/View;->measure(II)V

    .line 556
    goto/16 :goto_7

    .line 529
    :cond_11
    const/16 v25, 0x0

    goto :goto_8

    .line 530
    :cond_12
    move-object/from16 v25, v17

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    goto :goto_9

    .line 542
    :cond_13
    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    .line 543
    move/from16 v25, v10

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v21, v25

    goto :goto_a

    .line 546
    :cond_14
    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v21, v25

    goto :goto_a

    .line 550
    :cond_15
    move-object/from16 v25, v17

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v21, v25

    goto :goto_a

    .line 557
    :cond_16
    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v25, v0

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-lez v25, :cond_e

    .line 559
    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v25, v0

    if-nez v25, :cond_1a

    .line 561
    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v25, v0

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    .line 562
    move/from16 v25, v10

    const/high16 v26, -0x80000000

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v21, v25

    .line 576
    :goto_b
    move/from16 v25, v12

    if-eqz v25, :cond_1b

    .line 578
    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v22, v25

    .line 579
    move/from16 v25, v6

    move/from16 v26, v22

    sub-int v25, v25, v26

    move/from16 v23, v25

    .line 580
    move/from16 v25, v23

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v24, v25

    .line 582
    move/from16 v25, v20

    move/from16 v26, v23

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_17

    .line 583
    move-object/from16 v25, v17

    move/from16 v26, v24

    move/from16 v27, v21

    invoke-virtual/range {v25 .. v27}, Landroid/view/View;->measure(II)V

    .line 585
    :cond_17
    goto/16 :goto_7

    .line 564
    :cond_18
    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_19

    .line 565
    move/from16 v25, v10

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v21, v25

    goto :goto_b

    .line 568
    :cond_19
    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v21, v25

    goto :goto_b

    .line 572
    :cond_1a
    move-object/from16 v25, v17

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v21, v25

    goto :goto_b

    .line 587
    :cond_1b
    const/16 v25, 0x0

    move/from16 v26, v13

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v25

    move/from16 v22, v25

    .line 588
    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v25, v0

    move/from16 v26, v22

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v26, v11

    div-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v23, v25

    .line 589
    move/from16 v25, v20

    move/from16 v26, v23

    add-int v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v24, v25

    .line 591
    move-object/from16 v25, v17

    move/from16 v26, v24

    move/from16 v27, v21

    invoke-virtual/range {v25 .. v27}, Landroid/view/View;->measure(II)V

    goto/16 :goto_7

    .line 597
    :cond_1c
    move-object/from16 v25, v2

    move/from16 v26, v6

    move/from16 v27, v9

    invoke-virtual/range {v25 .. v27}, Landroid/support/v4/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    .line 598
    move-object/from16 v25, v2

    move/from16 v26, v12

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 599
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v25

    if-eqz v25, :cond_1d

    move/from16 v25, v12

    if-nez v25, :cond_1d

    .line 601
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 603
    :cond_1d
    return-void

    .line 440
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 1134
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    check-cast v3, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    move-object v2, v3

    .line 1135
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1137
    move-object v3, v2

    iget-boolean v3, v3, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    if-eqz v3, :cond_0

    .line 1138
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    move-result v3

    .line 1142
    :goto_0
    move-object v3, v0

    move-object v4, v2

    iget-boolean v4, v4, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    iput-boolean v4, v3, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 1143
    return-void

    .line 1140
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    move-result v3

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 1124
    move-object v0, p0

    move-object v3, v0

    invoke-super {v3}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    .line 1126
    new-instance v3, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v3

    .line 1127
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->isOpen()Z

    move-result v4

    :goto_0
    iput-boolean v4, v3, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    .line 1129
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 1127
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 10

    .prologue
    .line 678
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 680
    move v5, v1

    move v6, v3

    if-eq v5, v6, :cond_0

    .line 681
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 683
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v9, :cond_0

    .line 756
    move-object v9, v0

    move-object v10, v1

    invoke-super {v9, v10}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    move v0, v9

    .line 791
    :goto_0
    return v0

    .line 759
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 761
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    move v2, v9

    .line 762
    const/4 v9, 0x1

    move v3, v9

    .line 764
    move v9, v2

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    packed-switch v9, :pswitch_data_0

    .line 791
    :cond_1
    :goto_1
    move v9, v3

    move v0, v9

    goto :goto_0

    .line 766
    :pswitch_0
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    move v4, v9

    .line 767
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    move v5, v9

    .line 768
    move-object v9, v0

    move v10, v4

    iput v10, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 769
    move-object v9, v0

    move v10, v5

    iput v10, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 770
    goto :goto_1

    .line 774
    :pswitch_1
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 775
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    move v4, v9

    .line 776
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    move v5, v9

    .line 777
    move v9, v4

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float/2addr v9, v10

    move v6, v9

    .line 778
    move v9, v5

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float/2addr v9, v10

    move v7, v9

    .line 779
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v9

    move v8, v9

    .line 780
    move v9, v6

    move v10, v6

    mul-float/2addr v9, v10

    move v10, v7

    move v11, v7

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v10, v8

    move v11, v8

    mul-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move v11, v4

    float-to-int v11, v11

    move v12, v5

    float-to-int v12, v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 783
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    move-result v9

    .line 784
    goto :goto_1

    .line 764
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public openPane()Z
    .locals 4

    .prologue
    .line 825
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane(Landroid/view/View;I)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 687
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 688
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/SlidingPaneLayout;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v3, :cond_0

    .line 689
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 691
    :cond_0
    return-void

    .line 689
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method setAllChildrenVisible()V
    .locals 6

    .prologue
    .line 391
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v4

    move v2, v4

    :goto_0
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 392
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 393
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 394
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 391
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    :cond_1
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 4

    .prologue
    .line 315
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    .line 316
    return-void
.end method

.method public setPanelSlideListener(Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;)V
    .locals 4

    .prologue
    .line 326
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    .line 327
    return-void
.end method

.method public setParallaxDistance(I)V
    .locals 4

    .prologue
    .line 279
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    .line 280
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/widget/SlidingPaneLayout;->requestLayout()V

    .line 281
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 1005
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 1006
    return-void
.end method

.method public setShadowResource(I)V
    .locals 5

    .prologue
    .line 1015
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1016
    return-void
.end method

.method public setSliderFadeColor(I)V
    .locals 4

    .prologue
    .line 298
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 299
    return-void
.end method

.method public smoothSlideClosed()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 833
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    move-result v1

    .line 834
    return-void
.end method

.method public smoothSlideOpen()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 815
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    move-result v1

    .line 816
    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 10

    .prologue
    .line 968
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v6, :cond_0

    .line 970
    const/4 v6, 0x0

    move v0, v6

    .line 983
    :goto_0
    return v0

    .line 973
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v3, v6

    .line 975
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v6

    move-object v7, v3

    iget v7, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    move v4, v6

    .line 976
    move v6, v4

    int-to-float v6, v6

    move v7, v1

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    move v5, v6

    .line 978
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move v8, v5

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 979
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    .line 980
    move-object v6, v0

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 981
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 983
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method updateObscuredViewsVisibility(Landroid/view/View;)V
    .locals 23

    .prologue
    .line 350
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v20

    move/from16 v4, v20

    .line 351
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v20

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v5, v20

    .line 352
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v20

    move/from16 v6, v20

    .line 353
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/widget/SlidingPaneLayout;->getHeight()I

    move-result v20

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v7, v20

    .line 358
    move-object/from16 v20, v3

    if-eqz v20, :cond_1

    move-object/from16 v20, v3

    invoke-static/range {v20 .. v20}, Landroid/support/v4/widget/SlidingPaneLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 359
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v20

    move/from16 v8, v20

    .line 360
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v20

    move/from16 v9, v20

    .line 361
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v10, v20

    .line 362
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v20

    move/from16 v11, v20

    .line 367
    :goto_0
    const/16 v20, 0x0

    move/from16 v12, v20

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v20

    move/from16 v13, v20

    :goto_1
    move/from16 v20, v12

    move/from16 v21, v13

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 368
    move-object/from16 v20, v2

    move/from16 v21, v12

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v14, v20

    .line 370
    move-object/from16 v20, v14

    move-object/from16 v21, v3

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 388
    :cond_0
    return-void

    .line 364
    :cond_1
    const/16 v20, 0x0

    move/from16 v22, v20

    move/from16 v20, v22

    move/from16 v21, v22

    move/from16 v11, v21

    move/from16 v22, v20

    move/from16 v20, v22

    move/from16 v21, v22

    move/from16 v10, v21

    move/from16 v22, v20

    move/from16 v20, v22

    move/from16 v21, v22

    move/from16 v9, v21

    move/from16 v8, v20

    goto :goto_0

    .line 375
    :cond_2
    move/from16 v20, v4

    move-object/from16 v21, v14

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v15, v20

    .line 376
    move/from16 v20, v6

    move-object/from16 v21, v14

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v16, v20

    .line 377
    move/from16 v20, v5

    move-object/from16 v21, v14

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getRight()I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v17, v20

    .line 378
    move/from16 v20, v7

    move-object/from16 v21, v14

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getBottom()I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v18, v20

    .line 380
    move/from16 v20, v15

    move/from16 v21, v8

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    move/from16 v20, v16

    move/from16 v21, v10

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    move/from16 v20, v17

    move/from16 v21, v9

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_3

    move/from16 v20, v18

    move/from16 v21, v11

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_3

    .line 382
    const/16 v20, 0x4

    move/from16 v19, v20

    .line 386
    :goto_2
    move-object/from16 v20, v14

    move/from16 v21, v19

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 367
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 384
    :cond_3
    const/16 v20, 0x0

    move/from16 v19, v20

    goto :goto_2
.end method
