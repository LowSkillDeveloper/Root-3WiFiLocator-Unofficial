.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/DrawerLayout$LayoutParams;,
        Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;,
        Landroid/support/v4/widget/DrawerLayout$SavedState;,
        Landroid/support/v4/widget/DrawerLayout$SimpleDrawerListener;,
        Landroid/support/v4/widget/DrawerLayout$DrawerListener;
    }
.end annotation


# static fields
.field private static final ALLOW_EDGE_LOCK:Z = false

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field private static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"


# instance fields
.field private mChildrenCanceledTouch:Z

.field private mDisallowInterceptRequested:Z

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private final mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mMinDrawerMargin:I

.field private final mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100b3

    aput v3, v1, v2

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 213
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 214
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    .line 221
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    move-object v6, v0

    const/high16 v7, -0x67000000

    iput v7, v6, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    .line 133
    move-object v6, v0

    new-instance v7, Landroid/graphics/Paint;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 141
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 223
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    move v4, v6

    .line 224
    move-object v6, v0

    const/high16 v7, 0x42800000    # 64.0f

    move v8, v4

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    .line 225
    const/high16 v6, 0x43c80000    # 400.0f

    move v7, v4

    mul-float/2addr v6, v7

    move v5, v6

    .line 227
    move-object v6, v0

    new-instance v7, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    const/4 v10, 0x3

    invoke-direct {v8, v9, v10}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 228
    move-object v6, v0

    new-instance v7, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 230
    move-object v6, v0

    move-object v7, v0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-static {v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 231
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 232
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 233
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 235
    move-object v6, v0

    move-object v7, v0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-static {v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 236
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 237
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 238
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 241
    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 243
    move-object v6, v0

    new-instance v7, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 244
    move-object v6, v0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewGroupCompat;->setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V

    .line 245
    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 71
    sget-object v0, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private findVisibleDrawer()Landroid/view/View;
    .locals 6

    .prologue
    .line 1154
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v1, v4

    .line 1155
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 1156
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1157
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1158
    move-object v4, v3

    move-object v0, v4

    .line 1161
    :goto_1
    return-object v0

    .line 1155
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1161
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method static gravityToString(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 562
    move v0, p0

    move v1, v0

    const/4 v2, 0x3

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 563
    const-string v1, "LEFT"

    move-object v0, v1

    .line 568
    :goto_0
    return-object v0

    .line 565
    :cond_0
    move v1, v0

    const/4 v2, 0x5

    and-int/lit8 v1, v1, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 566
    const-string v1, "RIGHT"

    move-object v0, v1

    goto :goto_0

    .line 568
    :cond_1
    move v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 735
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 736
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 737
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 739
    :goto_1
    return v0

    .line 737
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 739
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method private hasPeekingDrawer()Z
    .locals 6

    .prologue
    .line 1115
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v1, v4

    .line 1116
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 1117
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v3, v4

    .line 1118
    move-object v4, v3

    iget-boolean v4, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-eqz v4, :cond_0

    .line 1119
    const/4 v4, 0x1

    move v0, v4

    .line 1122
    :goto_1
    return v0

    .line 1116
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1122
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private hasVisibleDrawer()Z
    .locals 2

    .prologue
    .line 1150
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method cancelChildViewTouch()V
    .locals 14

    .prologue
    .line 1166
    move-object v0, p0

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v6, :cond_1

    .line 1167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-wide v1, v6

    .line 1168
    move-wide v6, v1

    move-wide v8, v1

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v6

    move-object v3, v6

    .line 1170
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v6

    move v4, v6

    .line 1171
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 1172
    move-object v6, v0

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 1171
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1174
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 1175
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1177
    :cond_1
    return-void
.end method

.method checkDrawerViewGravity(Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 516
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewGravity(Landroid/view/View;)I

    move-result v4

    move v3, v4

    .line 517
    move v4, v3

    move v5, v2

    and-int/2addr v4, v5

    move v5, v2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .prologue
    .line 1141
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

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

.method public closeDrawer(I)V
    .locals 9

    .prologue
    .line 1038
    move-object v0, p0

    move v1, p1

    move v4, v1

    move-object v5, v0

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    move v2, v4

    .line 1040
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1042
    move-object v4, v3

    if-nez v4, :cond_0

    .line 1043
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No drawer view found with absolute gravity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v2

    invoke-static {v7}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1046
    :cond_0
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 1047
    return-void
.end method

.method public closeDrawer(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 1012
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1013
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a sliding drawer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1016
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v3, :cond_1

    .line 1017
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v2, v3

    .line 1018
    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1019
    move-object v3, v2

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 1028
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1029
    return-void

    .line 1021
    :cond_1
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewGravity(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1022
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v3

    goto :goto_0

    .line 1025
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v3

    goto :goto_0
.end method

.method public closeDrawers()V
    .locals 3

    .prologue
    .line 928
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 929
    return-void
.end method

.method closeDrawers(Z)V
    .locals 13

    .prologue
    .line 932
    move-object v0, p0

    move v1, p1

    const/4 v8, 0x0

    move v2, v8

    .line 933
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v8

    move v3, v8

    .line 934
    const/4 v8, 0x0

    move v4, v8

    :goto_0
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_3

    .line 935
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 936
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v6, v8

    .line 938
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v1

    if-eqz v8, :cond_1

    move-object v8, v6

    iget-boolean v8, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-nez v8, :cond_1

    .line 934
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 942
    :cond_1
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    move v7, v8

    .line 944
    move-object v8, v0

    move-object v9, v5

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewGravity(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 945
    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v10, v5

    move v11, v7

    neg-int v11, v11

    move-object v12, v5

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v9

    or-int/2addr v8, v9

    move v2, v8

    .line 952
    :goto_2
    move-object v8, v6

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    goto :goto_1

    .line 948
    :cond_2
    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v10, v5

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v11

    move-object v12, v5

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v9

    or-int/2addr v8, v9

    move v2, v8

    goto :goto_2

    .line 955
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 956
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 958
    move v8, v2

    if-eqz v8, :cond_4

    .line 959
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 961
    :cond_4
    return-void
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    .line 720
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v5

    move v1, v5

    .line 721
    const/4 v5, 0x0

    move v2, v5

    .line 722
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 723
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move v4, v5

    .line 724
    move v5, v2

    move v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v2, v5

    .line 722
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 726
    :cond_0
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    .line 729
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v6

    or-int/2addr v5, v6

    if-eqz v5, :cond_1

    .line 730
    move-object v5, v0

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 732
    :cond_1
    return-void
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 469
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v2, v3

    .line 470
    move-object v3, v2

    iget-boolean v3, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    if-eqz v3, :cond_1

    .line 471
    move-object v3, v2

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 472
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v3, :cond_0

    .line 473
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    .line 475
    :cond_0
    move-object v3, v0

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    .line 477
    :cond_1
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 480
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v2, v3

    .line 481
    move-object v3, v2

    iget-boolean v3, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    if-nez v3, :cond_1

    .line 482
    move-object v3, v2

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 483
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v3, :cond_0

    .line 484
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    .line 486
    :cond_0
    move-object v3, v1

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 488
    :cond_1
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .locals 6

    .prologue
    .line 491
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v3, :cond_0

    .line 492
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    move-object v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    .line 494
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 24

    .prologue
    .line 744
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v18

    move/from16 v7, v18

    .line 745
    move-object/from16 v18, v2

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v18

    move/from16 v8, v18

    .line 746
    const/16 v18, 0x0

    move/from16 v9, v18

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v18

    move/from16 v10, v18

    .line 748
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Canvas;->save()I

    move-result v18

    move/from16 v11, v18

    .line 749
    move/from16 v18, v8

    if-eqz v18, :cond_5

    .line 750
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v18

    move/from16 v12, v18

    .line 751
    const/16 v18, 0x0

    move/from16 v13, v18

    :goto_0
    move/from16 v18, v13

    move/from16 v19, v12

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 752
    move-object/from16 v18, v2

    move/from16 v19, v13

    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v14, v18

    .line 753
    move-object/from16 v18, v14

    move-object/from16 v19, v4

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v18, v14

    invoke-static/range {v18 .. v18}, Landroid/support/v4/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v2

    move-object/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 751
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 759
    :cond_1
    move-object/from16 v18, v2

    move-object/from16 v19, v14

    const/16 v20, 0x3

    invoke-virtual/range {v18 .. v20}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewGravity(Landroid/view/View;I)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 760
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v18

    move/from16 v15, v18

    .line 761
    move/from16 v18, v15

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    move/from16 v18, v15

    move/from16 v9, v18

    .line 762
    :cond_2
    goto :goto_1

    .line 763
    :cond_3
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v18

    move/from16 v15, v18

    .line 764
    move/from16 v18, v15

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    move/from16 v18, v15

    move/from16 v10, v18

    goto :goto_1

    .line 767
    :cond_4
    move-object/from16 v18, v3

    move/from16 v19, v9

    const/16 v20, 0x0

    move/from16 v21, v10

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v22

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-result v18

    .line 769
    :cond_5
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-wide/from16 v21, v5

    invoke-super/range {v18 .. v22}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v18

    move/from16 v12, v18

    .line 770
    move-object/from16 v18, v3

    move/from16 v19, v11

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 772
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_7

    move/from16 v18, v8

    if-eqz v18, :cond_7

    .line 773
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    move/from16 v18, v0

    const/high16 v19, -0x1000000

    and-int v18, v18, v19

    const/16 v19, 0x18

    ushr-int/lit8 v18, v18, 0x18

    move/from16 v13, v18

    .line 774
    move/from16 v18, v13

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v14, v18

    .line 775
    move/from16 v18, v14

    const/16 v19, 0x18

    shl-int/lit8 v18, v18, 0x18

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    move/from16 v19, v0

    const v20, 0xffffff

    and-int v19, v19, v20

    or-int v18, v18, v19

    move/from16 v15, v18

    .line 776
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move/from16 v19, v15

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 778
    move-object/from16 v18, v3

    move/from16 v19, v9

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v21, v10

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v18 .. v23}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 801
    :cond_6
    :goto_2
    move/from16 v18, v12

    move/from16 v2, v18

    return v2

    .line 779
    :cond_7
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    const/16 v20, 0x3

    invoke-virtual/range {v18 .. v20}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewGravity(Landroid/view/View;I)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 780
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    move/from16 v13, v18

    .line 781
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v18

    move/from16 v14, v18

    .line 782
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v18

    move/from16 v15, v18

    .line 783
    const/16 v18, 0x0

    move/from16 v19, v14

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v15

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move/from16 v16, v18

    .line 785
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move/from16 v19, v14

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v21, v14

    move/from16 v22, v13

    add-int v21, v21, v22

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBottom()I

    move-result v22

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 787
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    const/high16 v19, 0x437f0000    # 255.0f

    move/from16 v20, v16

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 788
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 789
    goto/16 :goto_2

    :cond_8
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    const/16 v20, 0x5

    invoke-virtual/range {v18 .. v20}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewGravity(Landroid/view/View;I)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 790
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    move/from16 v13, v18

    .line 791
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v18

    move/from16 v14, v18

    .line 792
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v18

    move/from16 v19, v14

    sub-int v18, v18, v19

    move/from16 v15, v18

    .line 793
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v18

    move/from16 v16, v18

    .line 794
    const/16 v18, 0x0

    move/from16 v19, v15

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v16

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move/from16 v17, v18

    .line 796
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move/from16 v19, v14

    move/from16 v20, v13

    sub-int v19, v19, v20

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v21, v14

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBottom()I

    move-result v22

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 798
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    const/high16 v19, 0x437f0000    # 255.0f

    move/from16 v20, v17

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 799
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .locals 9

    .prologue
    .line 543
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v6

    move v2, v6

    .line 544
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 545
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 546
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewGravity(Landroid/view/View;)I

    move-result v6

    move v5, v6

    .line 547
    move v6, v5

    const/4 v7, 0x7

    and-int/lit8 v6, v6, 0x7

    move v7, v1

    const/4 v8, 0x7

    and-int/lit8 v7, v7, 0x7

    if-ne v6, v7, :cond_0

    .line 549
    move-object v6, v4

    move-object v0, v6

    .line 552
    :goto_1
    return-object v0

    .line 544
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 552
    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method findOpenDrawer()Landroid/view/View;
    .locals 6

    .prologue
    .line 521
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v1, v4

    .line 522
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 523
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 524
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget-boolean v4, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    if-eqz v4, :cond_0

    .line 525
    move-object v4, v3

    move-object v0, v4

    .line 528
    :goto_1
    return-object v0

    .line 522
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 1127
    move-object v0, p0

    new-instance v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    .prologue
    .line 1146
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 1132
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v2, :cond_0

    new-instance v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getDrawerLockMode(I)I
    .locals 5

    .prologue
    .line 405
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    move v2, v3

    .line 407
    move v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 408
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    move v0, v3

    .line 412
    :goto_0
    return v0

    .line 409
    :cond_0
    move v3, v2

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 410
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    move v0, v3

    goto :goto_0

    .line 412
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 423
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewGravity(Landroid/view/View;)I

    move-result v3

    move v2, v3

    .line 424
    move v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 425
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    move v0, v3

    .line 430
    :goto_0
    return v0

    .line 426
    :cond_0
    move v3, v2

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 427
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    move v0, v3

    goto :goto_0

    .line 430
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method getDrawerViewGravity(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 511
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v3, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    move v2, v3

    .line 512
    move v3, v2

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    move v0, v3

    return v0
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 507
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v2, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move v0, v2

    return v0
.end method

.method isContentView(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 805
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v2, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDrawerOpen(I)Z
    .locals 5

    .prologue
    .line 1076
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1077
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1078
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v3

    move v0, v3

    .line 1080
    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .locals 7

    .prologue
    .line 1060
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1061
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a drawer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1063
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget-boolean v2, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    move v0, v2

    return v0
.end method

.method isDrawerView(Landroid/view/View;)Z
    .locals 6

    .prologue
    .line 809
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v4, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    move v2, v4

    .line 810
    move v4, v2

    move-object v5, v1

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    move v3, v4

    .line 812
    move v4, v3

    const/4 v5, 0x7

    and-int/lit8 v4, v4, 0x7

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isDrawerVisible(I)Z
    .locals 5

    .prologue
    .line 1107
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1108
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1109
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    move v0, v3

    .line 1111
    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 7

    .prologue
    .line 1092
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1093
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a drawer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1095
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v2, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .locals 12

    .prologue
    .line 532
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v8

    move v3, v8

    .line 533
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    move v4, v8

    .line 534
    move v8, v4

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v5, v8

    .line 535
    move v8, v4

    int-to-float v8, v8

    move v9, v2

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v6, v8

    .line 536
    move v8, v6

    move v9, v5

    sub-int/2addr v8, v9

    move v7, v8

    .line 538
    move-object v8, v1

    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewGravity(Landroid/view/View;I)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v7

    :goto_0
    invoke-virtual {v8, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 539
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 540
    return-void

    .line 538
    :cond_0
    move v9, v7

    neg-int v9, v9

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 579
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 580
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 581
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 573
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 574
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 575
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    .line 817
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-static {v7}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v7

    move v2, v7

    .line 820
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    or-int/2addr v7, v8

    move v3, v7

    .line 823
    const/4 v7, 0x0

    move v4, v7

    .line 825
    move v7, v2

    packed-switch v7, :pswitch_data_0

    .line 857
    :cond_0
    :goto_0
    move v7, v3

    if-nez v7, :cond_1

    move v7, v4

    if-nez v7, :cond_1

    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v4/widget/DrawerLayout;->hasPeekingDrawer()Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz v7, :cond_3

    :cond_1
    const/4 v7, 0x1

    :goto_1
    move v0, v7

    return v0

    .line 827
    :pswitch_0
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    move v5, v7

    .line 828
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    move v6, v7

    .line 829
    move-object v7, v0

    move v8, v5

    iput v8, v7, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 830
    move-object v7, v0

    move v8, v6

    iput v8, v7, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    .line 831
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move v9, v5

    float-to-int v9, v9

    move v10, v6

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 833
    const/4 v7, 0x1

    move v4, v7

    .line 835
    :cond_2
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 836
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 837
    goto :goto_0

    .line 842
    :pswitch_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 843
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v7}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 844
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v7}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    goto :goto_0

    .line 851
    :pswitch_2
    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 852
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 853
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 857
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 825
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 1181
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/widget/DrawerLayout;->hasVisibleDrawer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1182
    move-object v3, v2

    invoke-static {v3}, Landroid/support/v4/view/KeyEventCompat;->startTracking(Landroid/view/KeyEvent;)V

    .line 1183
    const/4 v3, 0x1

    move v0, v3

    .line 1185
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    .line 1190
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 1191
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1192
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1193
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 1195
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 1197
    :goto_1
    return v0

    .line 1195
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1197
    :cond_2
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 24

    .prologue
    .line 641
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v18, v2

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    .line 642
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v18

    move/from16 v8, v18

    .line 643
    const/16 v18, 0x0

    move/from16 v9, v18

    :goto_0
    move/from16 v18, v9

    move/from16 v19, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 644
    move-object/from16 v18, v2

    move/from16 v19, v9

    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v10, v18

    .line 646
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 643
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 650
    :cond_1
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object/from16 v11, v18

    .line 652
    move-object/from16 v18, v2

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 653
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    move-object/from16 v21, v11

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    add-int v21, v21, v22

    move-object/from16 v22, v11

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v22, v0

    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    add-int v22, v22, v23

    invoke-virtual/range {v18 .. v22}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 657
    :cond_2
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move/from16 v12, v18

    .line 658
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v13, v18

    .line 661
    move-object/from16 v18, v2

    move-object/from16 v19, v10

    const/16 v20, 0x3

    invoke-virtual/range {v18 .. v20}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewGravity(Landroid/view/View;I)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 662
    move/from16 v18, v12

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v19, v12

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v14, v18

    .line 667
    :goto_2
    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    move/from16 v18, v0

    const/16 v19, 0x70

    and-int/lit8 v18, v18, 0x70

    move/from16 v15, v18

    .line 669
    move/from16 v18, v15

    sparse-switch v18, :sswitch_data_0

    .line 672
    move-object/from16 v18, v10

    move/from16 v19, v14

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    move/from16 v21, v14

    move/from16 v22, v12

    add-int v21, v21, v22

    move/from16 v22, v13

    invoke-virtual/range {v18 .. v22}, Landroid/view/View;->layout(IIII)V

    .line 702
    :goto_3
    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_0

    .line 703
    move-object/from16 v18, v10

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 664
    :cond_3
    move/from16 v18, v6

    move/from16 v19, v4

    sub-int v18, v18, v19

    move/from16 v19, v12

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v14, v18

    goto :goto_2

    .line 677
    :sswitch_0
    move/from16 v18, v7

    move/from16 v19, v5

    sub-int v18, v18, v19

    move/from16 v16, v18

    .line 678
    move-object/from16 v18, v10

    move/from16 v19, v14

    move/from16 v20, v16

    move-object/from16 v21, v11

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v21, v14

    move/from16 v22, v12

    add-int v21, v21, v22

    move/from16 v22, v16

    move-object/from16 v23, v11

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    invoke-virtual/range {v18 .. v22}, Landroid/view/View;->layout(IIII)V

    .line 682
    goto :goto_3

    .line 686
    :sswitch_1
    move/from16 v18, v7

    move/from16 v19, v5

    sub-int v18, v18, v19

    move/from16 v16, v18

    .line 687
    move/from16 v18, v16

    move/from16 v19, v13

    sub-int v18, v18, v19

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    move/from16 v17, v18

    .line 691
    move/from16 v18, v17

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 692
    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    move/from16 v17, v18

    .line 696
    :cond_4
    :goto_4
    move-object/from16 v18, v10

    move/from16 v19, v14

    move/from16 v20, v17

    move/from16 v21, v14

    move/from16 v22, v12

    add-int v21, v21, v22

    move/from16 v22, v17

    move/from16 v23, v13

    add-int v22, v22, v23

    invoke-virtual/range {v18 .. v22}, Landroid/view/View;->layout(IIII)V

    .line 698
    goto/16 :goto_3

    .line 693
    :cond_5
    move/from16 v18, v17

    move/from16 v19, v13

    add-int v18, v18, v19

    move/from16 v19, v16

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 694
    move/from16 v18, v16

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v19, v13

    sub-int v18, v18, v19

    move/from16 v17, v18

    goto :goto_4

    .line 707
    :cond_6
    move-object/from16 v18, v2

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    .line 708
    move-object/from16 v18, v2

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 709
    return-void

    .line 669
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 22

    .prologue
    .line 585
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v17, v3

    invoke-static/range {v17 .. v17}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    move/from16 v5, v17

    .line 586
    move/from16 v17, v4

    invoke-static/range {v17 .. v17}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    move/from16 v6, v17

    .line 587
    move/from16 v17, v3

    invoke-static/range {v17 .. v17}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    move/from16 v7, v17

    .line 588
    move/from16 v17, v4

    invoke-static/range {v17 .. v17}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    move/from16 v8, v17

    .line 590
    move/from16 v17, v5

    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move/from16 v17, v6

    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 591
    :cond_0
    new-instance v17, Ljava/lang/IllegalArgumentException;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    const-string v19, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 595
    :cond_1
    move-object/from16 v17, v2

    move/from16 v18, v7

    move/from16 v19, v8

    invoke-virtual/range {v17 .. v19}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 598
    const/16 v17, 0x0

    move/from16 v9, v17

    .line 599
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v17

    move/from16 v10, v17

    .line 600
    const/16 v17, 0x0

    move/from16 v11, v17

    :goto_0
    move/from16 v17, v11

    move/from16 v18, v10

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 601
    move-object/from16 v17, v2

    move/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v12, v17

    .line 603
    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 600
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 607
    :cond_2
    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object/from16 v13, v17

    .line 609
    move-object/from16 v17, v2

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 611
    move/from16 v17, v7

    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move/from16 v14, v17

    .line 613
    move/from16 v17, v8

    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move/from16 v15, v17

    .line 615
    move-object/from16 v17, v12

    move/from16 v18, v14

    move/from16 v19, v15

    invoke-virtual/range {v17 .. v19}, Landroid/view/View;->measure(II)V

    .line 616
    goto :goto_1

    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 617
    move-object/from16 v17, v2

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewGravity(Landroid/view/View;)I

    move-result v17

    const/16 v18, 0x7

    and-int/lit8 v17, v17, 0x7

    move/from16 v14, v17

    .line 619
    move/from16 v17, v9

    move/from16 v18, v14

    and-int v17, v17, v18

    if-eqz v17, :cond_4

    .line 620
    new-instance v17, Ljava/lang/IllegalStateException;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v21, v19

    move-object/from16 v19, v21

    move-object/from16 v20, v21

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Child drawer has absolute gravity "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move/from16 v20, v14

    invoke-static/range {v20 .. v20}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but this "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "DrawerLayout"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " already has a "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "drawer view along that edge"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 624
    :cond_4
    move/from16 v17, v3

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    move/from16 v18, v0

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v15, v17

    .line 627
    move/from16 v17, v4

    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->height:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v16, v17

    .line 630
    move-object/from16 v17, v12

    move/from16 v18, v15

    move/from16 v19, v16

    invoke-virtual/range {v17 .. v19}, Landroid/view/View;->measure(II)V

    .line 631
    goto/16 :goto_1

    .line 632
    :cond_5
    new-instance v17, Ljava/lang/IllegalStateException;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v21, v19

    move-object/from16 v19, v21

    move-object/from16 v20, v21

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Child "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " at index "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 637
    :cond_6
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    .prologue
    .line 1202
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$SavedState;

    move-object v2, v4

    .line 1203
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v5

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1205
    move-object v4, v2

    iget v4, v4, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v4, :cond_0

    .line 1206
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1207
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 1208
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1212
    :cond_0
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1213
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1214
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 11

    .prologue
    .line 1218
    move-object v0, p0

    move-object v7, v0

    invoke-super {v7}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v7

    move-object v1, v7

    .line 1220
    new-instance v7, Landroid/support/v4/widget/DrawerLayout$SavedState;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v7

    .line 1222
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    move v3, v7

    .line 1223
    const/4 v7, 0x0

    move v4, v7

    :goto_0
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_2

    .line 1224
    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v5, v7

    .line 1225
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1223
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1229
    :cond_1
    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v6, v7

    .line 1230
    move-object v7, v6

    iget-boolean v7, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    if-eqz v7, :cond_0

    .line 1231
    move-object v7, v2

    move-object v8, v6

    iget v8, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v8, v7, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1237
    :cond_2
    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    iput v8, v7, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 1238
    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    iput v8, v7, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 1240
    move-object v7, v2

    move-object v0, v7

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    .prologue
    .line 862
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 863
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 865
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    move v2, v12

    .line 866
    const/4 v12, 0x1

    move v3, v12

    .line 868
    move v12, v2

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    packed-switch v12, :pswitch_data_0

    .line 909
    :goto_0
    :pswitch_0
    move v12, v3

    move v0, v12

    return v0

    .line 870
    :pswitch_1
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move v4, v12

    .line 871
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move v5, v12

    .line 872
    move-object v12, v0

    move v13, v4

    iput v13, v12, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 873
    move-object v12, v0

    move v13, v5

    iput v13, v12, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    .line 874
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 875
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 876
    goto :goto_0

    .line 880
    :pswitch_2
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move v4, v12

    .line 881
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move v5, v12

    .line 882
    const/4 v12, 0x1

    move v6, v12

    .line 883
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move v13, v4

    float-to-int v13, v13

    move v14, v5

    float-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v12

    move-object v7, v12

    .line 884
    move-object v12, v7

    if-eqz v12, :cond_0

    move-object v12, v0

    move-object v13, v7

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 885
    move v12, v4

    move-object v13, v0

    iget v13, v13, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    sub-float/2addr v12, v13

    move v8, v12

    .line 886
    move v12, v5

    move-object v13, v0

    iget v13, v13, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    sub-float/2addr v12, v13

    move v9, v12

    .line 887
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v12}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v12

    move v10, v12

    .line 888
    move v12, v8

    move v13, v8

    mul-float/2addr v12, v13

    move v13, v9

    move v14, v9

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move v13, v10

    move v14, v10

    mul-int/2addr v13, v14

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_0

    .line 890
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v12

    move-object v11, v12

    .line 891
    move-object v12, v11

    if-eqz v12, :cond_0

    .line 892
    move-object v12, v0

    move-object v13, v11

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    const/4 v12, 0x1

    :goto_1
    move v6, v12

    .line 896
    :cond_0
    move-object v12, v0

    move v13, v6

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 897
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 898
    goto/16 :goto_0

    .line 892
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 902
    :pswitch_3
    move-object v12, v0

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 903
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 904
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto/16 :goto_0

    .line 868
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public openDrawer(I)V
    .locals 9

    .prologue
    .line 995
    move-object v0, p0

    move v1, p1

    move v4, v1

    move-object v5, v0

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    move v2, v4

    .line 997
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 999
    move-object v4, v3

    if-nez v4, :cond_0

    .line 1000
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No drawer view found with absolute gravity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v2

    invoke-static {v7}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1003
    :cond_0
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1004
    return-void
.end method

.method public openDrawer(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 969
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 970
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a sliding drawer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 973
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v3, :cond_1

    .line 974
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v2, v3

    .line 975
    move-object v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 976
    move-object v3, v2

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 985
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 986
    return-void

    .line 978
    :cond_1
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewGravity(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 979
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v3

    goto :goto_0

    .line 981
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v3

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4

    .prologue
    .line 913
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->isEdgeTouched(I)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->isEdgeTouched(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 916
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 918
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 919
    move v2, v1

    if-eqz v2, :cond_1

    .line 920
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 922
    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 713
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    if-nez v1, :cond_0

    .line 714
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 716
    :cond_0
    return-void
.end method

.method public setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .locals 4

    .prologue
    .line 301
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    .line 302
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 5

    .prologue
    .line 318
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 319
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 320
    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 8

    .prologue
    .line 342
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, v2

    move-object v7, v0

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    invoke-static {v6, v7}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v6

    move v3, v6

    .line 344
    move v6, v3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 345
    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    .line 349
    :cond_0
    :goto_0
    move v6, v1

    if-eqz v6, :cond_1

    .line 351
    move v6, v3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    :goto_1
    move-object v4, v6

    .line 352
    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 354
    :cond_1
    move v6, v1

    packed-switch v6, :pswitch_data_0

    .line 369
    :cond_2
    :goto_2
    return-void

    .line 346
    :cond_3
    move v6, v3

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    .line 347
    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    .line 351
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    goto :goto_1

    .line 356
    :pswitch_0
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 357
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 358
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 362
    :pswitch_1
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 363
    move-object v6, v5

    if-eqz v6, :cond_2

    .line 364
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .locals 8

    .prologue
    .line 390
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 391
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "drawer with appropriate layout_gravity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 394
    :cond_0
    move-object v3, v0

    move v4, v1

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewGravity(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 395
    return-void
.end method

.method public setDrawerShadow(II)V
    .locals 6

    .prologue
    .line 281
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    .line 282
    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 6

    .prologue
    .line 261
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v2

    move-object v5, v0

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    move v3, v4

    .line 263
    move v4, v3

    const/4 v5, 0x3

    and-int/lit8 v4, v4, 0x3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 264
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 265
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 267
    :cond_0
    move v4, v3

    const/4 v5, 0x5

    and-int/lit8 v4, v4, 0x5

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 268
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 269
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 271
    :cond_1
    return-void
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .locals 7

    .prologue
    .line 497
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v3, v4

    .line 498
    move v4, v2

    move-object v5, v3

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    move-object v4, v3

    move v5, v2

    iput v5, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 503
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    .line 504
    goto :goto_0
.end method

.method public setScrimColor(I)V
    .locals 4

    .prologue
    .line 290
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    .line 291
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 292
    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .locals 10

    .prologue
    .line 438
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v8

    move v4, v8

    .line 439
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v8

    move v5, v8

    .line 442
    move v8, v4

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    move v8, v5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 443
    :cond_0
    const/4 v8, 0x1

    move v6, v8

    .line 450
    :goto_0
    move-object v8, v3

    if-eqz v8, :cond_1

    move v8, v2

    if-nez v8, :cond_1

    .line 451
    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v7, v8

    .line 452
    move-object v8, v7

    iget v8, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_6

    .line 453
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    .line 459
    :cond_1
    :goto_1
    move v8, v6

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    if-eq v8, v9, :cond_2

    .line 460
    move-object v8, v0

    move v9, v6

    iput v9, v8, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    .line 462
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v8, :cond_2

    .line 463
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    move v9, v6

    invoke-interface {v8, v9}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    .line 466
    :cond_2
    return-void

    .line 444
    :cond_3
    move v8, v4

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    move v8, v5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 445
    :cond_4
    const/4 v8, 0x2

    move v6, v8

    goto :goto_0

    .line 447
    :cond_5
    const/4 v8, 0x0

    move v6, v8

    goto :goto_0

    .line 454
    :cond_6
    move-object v8, v7

    iget v8, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_1

    .line 455
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    goto :goto_1
.end method
