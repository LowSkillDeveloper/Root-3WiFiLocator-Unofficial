.class Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field private mDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private final mGravity:I

.field private final mPeekRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/support/v4/widget/DrawerLayout;


# direct methods
.method public constructor <init>(Landroid/support/v4/widget/DrawerLayout;I)V
    .locals 8

    .prologue
    .line 1290
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    .line 1284
    move-object v3, v0

    new-instance v4, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;-><init>(Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;)V

    iput-object v4, v3, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    .line 1291
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mGravity:I

    .line 1292
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;)V
    .locals 2

    .prologue
    .line 1280
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->peekDrawer()V

    return-void
.end method

.method private closeOtherDrawer()V
    .locals 5

    .prologue
    .line 1341
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mGravity:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const/4 v3, 0x5

    :goto_0
    move v1, v3

    .line 1342
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1343
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1344
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 1346
    :cond_0
    return-void

    .line 1341
    :cond_1
    const/4 v3, 0x3

    goto :goto_0
.end method

.method private peekDrawer()V
    .locals 10

    .prologue
    .line 1375
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v6}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v6

    move v3, v6

    .line 1376
    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mGravity:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    :goto_0
    move v4, v6

    .line 1377
    move v6, v4

    if-eqz v6, :cond_5

    .line 1378
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v6

    move-object v1, v6

    .line 1379
    move-object v6, v1

    if-eqz v6, :cond_4

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    neg-int v6, v6

    :goto_1
    move v7, v3

    add-int/2addr v6, v7

    move v2, v6

    .line 1385
    :goto_2
    move-object v6, v1

    if-eqz v6, :cond_2

    move v6, v4

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    move v7, v2

    if-lt v6, v7, :cond_1

    :cond_0
    move v6, v4

    if-nez v6, :cond_2

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    move v7, v2

    if-le v6, v7, :cond_2

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v6

    if-nez v6, :cond_2

    .line 1388
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v5, v6

    .line 1389
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v7, v1

    move v8, v2

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    .line 1390
    move-object v6, v5

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 1391
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1393
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    .line 1395
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout;->cancelChildViewTouch()V

    .line 1397
    :cond_2
    return-void

    .line 1376
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 1379
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 1381
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v6

    move-object v1, v6

    .line 1382
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v6

    move v7, v3

    sub-int/2addr v6, v7

    move v2, v6

    goto :goto_2
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 8

    .prologue
    .line 1432
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    move-object v6, v1

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewGravity(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1433
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    move v6, v2

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v5

    .line 1436
    :goto_0
    return v0

    .line 1435
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v5

    move v4, v5

    .line 1436
    move v5, v4

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    move v6, v2

    move v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 5

    .prologue
    .line 1442
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1427
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public onEdgeDragStarted(II)V
    .locals 7

    .prologue
    .line 1414
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1415
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1420
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1421
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 1423
    :cond_0
    return-void

    .line 1417
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    goto :goto_0
.end method

.method public onEdgeLock(I)Z
    .locals 3

    .prologue
    .line 1408
    move-object v0, p0

    move v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public onEdgeTouched(II)V
    .locals 7

    .prologue
    .line 1369
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0xa0

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v3

    .line 1370
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 1334
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v3, v4

    .line 1335
    move-object v4, v3

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 1337
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    .line 1338
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 6

    .prologue
    .line 1312
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mGravity:I

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v5}, Landroid/support/v4/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1313
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 12

    .prologue
    .line 1318
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    move v7, v9

    .line 1321
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    move-object v10, v1

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewGravity(Landroid/view/View;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1322
    move v9, v7

    move v10, v2

    add-int/2addr v9, v10

    int-to-float v9, v9

    move v10, v7

    int-to-float v10, v10

    div-float/2addr v9, v10

    move v6, v9

    .line 1327
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    move-object v10, v1

    move v11, v6

    invoke-virtual {v9, v10, v11}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 1328
    move-object v9, v1

    move v10, v6

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1

    const/4 v10, 0x4

    :goto_1
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1329
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v9}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1330
    return-void

    .line 1324
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v9}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v9

    move v8, v9

    .line 1325
    move v9, v8

    move v10, v2

    sub-int/2addr v9, v10

    int-to-float v9, v9

    move v10, v7

    int-to-float v10, v10

    div-float/2addr v9, v10

    move v6, v9

    goto :goto_0

    .line 1328
    :cond_1
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 11

    .prologue
    .line 1352
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v8

    move v4, v8

    .line 1353
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    move v5, v8

    .line 1356
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    move-object v9, v1

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewGravity(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1357
    move v8, v2

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_0

    move v8, v2

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_1

    move v8, v4

    const/high16 v9, 0x3f000000    # 0.5f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    :cond_0
    const/4 v8, 0x0

    :goto_0
    move v6, v8

    .line 1363
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    move v9, v6

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v8

    .line 1364
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1365
    return-void

    .line 1357
    :cond_1
    move v8, v5

    neg-int v8, v8

    goto :goto_0

    .line 1359
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v8

    move v7, v8

    .line 1360
    move v8, v2

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_3

    move v8, v2

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_4

    move v8, v4

    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4

    :cond_3
    move v8, v7

    move v9, v5

    sub-int/2addr v8, v9

    :goto_2
    move v6, v8

    goto :goto_1

    :cond_4
    move v8, v7

    goto :goto_2
.end method

.method public removeCallbacks()V
    .locals 3

    .prologue
    .line 1299
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 1300
    return-void
.end method

.method public setDragger(Landroid/support/v4/widget/ViewDragHelper;)V
    .locals 4

    .prologue
    .line 1295
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 1296
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 1306
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mGravity:I

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewGravity(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
