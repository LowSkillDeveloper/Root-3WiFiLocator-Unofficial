.class final Landroid/support/v4/app/BackStackRecord;
.super Landroid/support/v4/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$BackStackEntry;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/BackStackRecord$Op;
    }
.end annotation


# static fields
.field static final OP_ADD:I = 0x1

.field static final OP_ATTACH:I = 0x7

.field static final OP_DETACH:I = 0x6

.field static final OP_HIDE:I = 0x4

.field static final OP_NULL:I = 0x0

.field static final OP_REMOVE:I = 0x3

.field static final OP_REPLACE:I = 0x2

.field static final OP_SHOW:I = 0x5

.field static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field mAddToBackStack:Z

.field mAllowAddToBackStack:Z

.field mBreadCrumbShortTitleRes:I

.field mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field mBreadCrumbTitleRes:I

.field mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field mCommitted:Z

.field mEnterAnim:I

.field mExitAnim:I

.field mHead:Landroid/support/v4/app/BackStackRecord$Op;

.field mIndex:I

.field final mManager:Landroid/support/v4/app/FragmentManagerImpl;

.field mName:Ljava/lang/String;

.field mNumOp:I

.field mPopEnterAnim:I

.field mPopExitAnim:I

.field mTail:Landroid/support/v4/app/BackStackRecord$Op;

.field mTransition:I

.field mTransitionStyle:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
    .locals 4

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/app/FragmentTransaction;-><init>()V

    .line 209
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 212
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 334
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 335
    return-void
.end method

.method private doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 12

    .prologue
    .line 394
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v7, v6, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 396
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 397
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v6, :cond_0

    move-object v6, v3

    move-object v7, v2

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 398
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t change tag of fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " now "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 402
    :cond_0
    move-object v6, v2

    move-object v7, v3

    iput-object v7, v6, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 405
    :cond_1
    move v6, v1

    if-eqz v6, :cond_3

    .line 406
    move-object v6, v2

    iget v6, v6, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v6, :cond_2

    move-object v6, v2

    iget v6, v6, Landroid/support/v4/app/Fragment;->mFragmentId:I

    move v7, v1

    if-eq v6, v7, :cond_2

    .line 407
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t change container ID of fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    iget v9, v9, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " now "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 411
    :cond_2
    move-object v6, v2

    move-object v7, v2

    move v8, v1

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput v7, v6, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 414
    :cond_3
    new-instance v6, Landroid/support/v4/app/BackStackRecord$Op;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    move-object v5, v6

    .line 415
    move-object v6, v5

    move v7, v4

    iput v7, v6, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 416
    move-object v6, v5

    move-object v7, v2

    iput-object v7, v6, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 417
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 418
    return-void
.end method


# virtual methods
.method public add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 8

    .prologue
    .line 384
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 385
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 9

    .prologue
    .line 389
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 390
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 8

    .prologue
    .line 379
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 380
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
    .locals 8

    .prologue
    .line 364
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    if-nez v2, :cond_0

    .line 365
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    move-object v6, v3

    move-object v7, v4

    move-object v3, v7

    move-object v4, v6

    move-object v5, v7

    iput-object v5, v4, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object v3, v2, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 371
    :goto_0
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    iput v3, v2, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    .line 372
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    iput v3, v2, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    .line 373
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    iput v3, v2, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    .line 374
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    iput v3, v2, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    .line 375
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    .line 376
    return-void

    .line 367
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object v3, v2, Landroid/support/v4/app/BackStackRecord$Op;->prev:Landroid/support/v4/app/BackStackRecord$Op;

    .line 368
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    .line 369
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_0
.end method

.method public addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 6

    .prologue
    .line 502
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    if-nez v2, :cond_0

    .line 503
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 506
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    .line 507
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 508
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 6

    .prologue
    .line 470
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/support/v4/app/BackStackRecord$Op;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    move-object v2, v3

    .line 471
    move-object v3, v2

    const/4 v4, 0x7

    iput v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 472
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 473
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 475
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method bumpBackStackNesting(I)V
    .locals 9

    .prologue
    .line 549
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v5, :cond_0

    .line 571
    :goto_0
    return-void

    .line 552
    :cond_0
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bump nesting in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 554
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v2, v5

    .line 555
    :goto_1
    move-object v5, v2

    if-eqz v5, :cond_5

    .line 556
    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_2

    .line 557
    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    move v7, v1

    add-int/2addr v6, v7

    iput v6, v5, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 558
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bump nesting of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    iget v7, v7, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 561
    :cond_2
    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    .line 562
    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    :goto_2
    move v5, v3

    if-ltz v5, :cond_4

    .line 563
    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    move-object v4, v5

    .line 564
    move-object v5, v4

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    move v7, v1

    add-int/2addr v6, v7

    iput v6, v5, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 565
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bump nesting of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    iget v7, v7, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 562
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 569
    :cond_4
    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v2, v5

    goto/16 :goto_1

    .line 571
    :cond_5
    goto/16 :goto_0
.end method

.method public commit()I
    .locals 3

    .prologue
    .line 574
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public commitAllowingStateLoss()I
    .locals 3

    .prologue
    .line 578
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I

    move-result v1

    move v0, v1

    return v0
.end method

.method commitInternal(Z)I
    .locals 10

    .prologue
    .line 582
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "commit already called"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 583
    :cond_0
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 584
    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Commit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 585
    new-instance v4, Landroid/support/v4/util/LogWriter;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "FragmentManager"

    invoke-direct {v5, v6}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 586
    new-instance v4, Ljava/io/PrintWriter;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v4

    .line 587
    move-object v4, v0

    const-string v5, "  "

    const/4 v6, 0x0

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 589
    :cond_1
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    .line 590
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v4, :cond_2

    .line 591
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I

    move-result v5

    iput v5, v4, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 595
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v5, v0

    move v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 596
    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    move v0, v4

    return v0

    .line 593
    :cond_2
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    goto :goto_0
.end method

.method public detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 6

    .prologue
    .line 461
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/support/v4/app/BackStackRecord$Op;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    move-object v2, v3

    .line 462
    move-object v3, v2

    const/4 v4, 0x6

    iput v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 463
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 464
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 466
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
    .locals 5

    .prologue
    .line 516
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v1, :cond_0

    .line 517
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "This transaction is already being added to the back stack"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 520
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 521
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 238
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 13

    .prologue
    .line 241
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move v9, v3

    if-eqz v9, :cond_8

    .line 242
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "mName="

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    move-object v9, v2

    const-string v10, " mIndex="

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 244
    move-object v9, v2

    const-string v10, " mCommitted="

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Z)V

    .line 245
    move-object v9, v0

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    if-eqz v9, :cond_0

    .line 246
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "mTransition=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 248
    move-object v9, v2

    const-string v10, " mTransitionStyle=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    :cond_0
    move-object v9, v0

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    if-nez v9, :cond_1

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    if-eqz v9, :cond_2

    .line 252
    :cond_1
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "mEnterAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 254
    move-object v9, v2

    const-string v10, " mExitAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    :cond_2
    move-object v9, v0

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    if-nez v9, :cond_3

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    if-eqz v9, :cond_4

    .line 258
    :cond_3
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "mPopEnterAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    move-object v9, v2

    const-string v10, " mPopExitAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    :cond_4
    move-object v9, v0

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-nez v9, :cond_5

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz v9, :cond_6

    .line 264
    :cond_5
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "mBreadCrumbTitleRes=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    move-object v9, v2

    const-string v10, " mBreadCrumbTitleText="

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 269
    :cond_6
    move-object v9, v0

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-nez v9, :cond_7

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz v9, :cond_8

    .line 270
    :cond_7
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 272
    move-object v9, v2

    const-string v10, " mBreadCrumbShortTitleText="

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 277
    :cond_8
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    if-eqz v9, :cond_10

    .line 278
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "Operations:"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 280
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v5, v9

    .line 281
    const/4 v9, 0x0

    move v6, v9

    .line 282
    :goto_0
    move-object v9, v5

    if-eqz v9, :cond_10

    .line 284
    move-object v9, v5

    iget v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v9, :pswitch_data_0

    .line 293
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cmd="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    iget v10, v10, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 295
    :goto_1
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "  Op #"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 296
    move-object v9, v2

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    move-object v9, v2

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    move-object v10, v5

    iget-object v10, v10, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 298
    move v9, v3

    if-eqz v9, :cond_c

    .line 299
    move-object v9, v5

    iget v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    if-nez v9, :cond_9

    move-object v9, v5

    iget v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    if-eqz v9, :cond_a

    .line 300
    :cond_9
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "enterAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    move-object v9, v2

    move-object v10, v5

    iget v10, v10, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    move-object v9, v2

    const-string v10, " exitAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    move-object v9, v2

    move-object v10, v5

    iget v10, v10, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    :cond_a
    move-object v9, v5

    iget v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    if-nez v9, :cond_b

    move-object v9, v5

    iget v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    if-eqz v9, :cond_c

    .line 306
    :cond_b
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "popEnterAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    move-object v9, v2

    move-object v10, v5

    iget v10, v10, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    move-object v9, v2

    const-string v10, " popExitAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    move-object v9, v2

    move-object v10, v5

    iget v10, v10, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    :cond_c
    move-object v9, v5

    iget-object v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v9, :cond_f

    move-object v9, v5

    iget-object v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_f

    .line 313
    const/4 v9, 0x0

    move v8, v9

    :goto_2
    move v9, v8

    move-object v10, v5

    iget-object v10, v10, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_f

    .line 314
    move-object v9, v2

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    move-object v9, v5

    iget-object v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    .line 316
    move-object v9, v2

    const-string v10, "Removed: "

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    :goto_3
    move-object v9, v2

    move-object v10, v5

    iget-object v10, v10, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    move v11, v8

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 313
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 285
    :pswitch_0
    const-string v9, "NULL"

    move-object v7, v9

    goto/16 :goto_1

    .line 286
    :pswitch_1
    const-string v9, "ADD"

    move-object v7, v9

    goto/16 :goto_1

    .line 287
    :pswitch_2
    const-string v9, "REPLACE"

    move-object v7, v9

    goto/16 :goto_1

    .line 288
    :pswitch_3
    const-string v9, "REMOVE"

    move-object v7, v9

    goto/16 :goto_1

    .line 289
    :pswitch_4
    const-string v9, "HIDE"

    move-object v7, v9

    goto/16 :goto_1

    .line 290
    :pswitch_5
    const-string v9, "SHOW"

    move-object v7, v9

    goto/16 :goto_1

    .line 291
    :pswitch_6
    const-string v9, "DETACH"

    move-object v7, v9

    goto/16 :goto_1

    .line 292
    :pswitch_7
    const-string v9, "ATTACH"

    move-object v7, v9

    goto/16 :goto_1

    .line 318
    :cond_d
    move v9, v8

    if-nez v9, :cond_e

    .line 319
    move-object v9, v2

    const-string v10, "Removed:"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    :cond_e
    move-object v9, v2

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "  #"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    move v10, v8

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 322
    move-object v9, v2

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 327
    :cond_f
    move-object v9, v5

    iget-object v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v5, v9

    .line 328
    add-int/lit8 v6, v6, 0x1

    .line 329
    goto/16 :goto_0

    .line 331
    :cond_10
    return-void

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 357
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-eqz v1, :cond_0

    .line 358
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 360
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    move-object v0, v1

    goto :goto_0
.end method

.method public getBreadCrumbShortTitleRes()I
    .locals 2

    .prologue
    .line 346
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    move v0, v1

    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 350
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-eqz v1, :cond_0

    .line 351
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 353
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    move-object v0, v1

    goto :goto_0
.end method

.method public getBreadCrumbTitleRes()I
    .locals 2

    .prologue
    .line 342
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    move v0, v1

    return v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    move v0, v1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 775
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getTransition()I
    .locals 2

    .prologue
    .line 779
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    move v0, v1

    return v0
.end method

.method public getTransitionStyle()I
    .locals 2

    .prologue
    .line 783
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    move v0, v1

    return v0
.end method

.method public hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 6

    .prologue
    .line 443
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/support/v4/app/BackStackRecord$Op;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    move-object v2, v3

    .line 444
    move-object v3, v2

    const/4 v4, 0x4

    iput v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 445
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 446
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 448
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public isAddToBackStackAllowed()Z
    .locals 2

    .prologue
    .line 512
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    move v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 787
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public popFromBackStack(Z)V
    .locals 12

    .prologue
    .line 691
    move-object v0, p0

    move v1, p1

    sget-boolean v6, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 692
    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "popFromBackStack: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 693
    new-instance v6, Landroid/support/v4/util/LogWriter;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "FragmentManager"

    invoke-direct {v7, v8}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    .line 694
    new-instance v6, Ljava/io/PrintWriter;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v2

    invoke-direct {v7, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v6

    .line 695
    move-object v6, v0

    const-string v7, "  "

    const/4 v8, 0x0

    move-object v9, v3

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 698
    :cond_0
    move-object v6, v0

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 700
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v2, v6

    .line 701
    :goto_0
    move-object v6, v2

    if-eqz v6, :cond_3

    .line 702
    move-object v6, v2

    iget v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v6, :pswitch_data_0

    .line 756
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown cmd: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    iget v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 704
    :pswitch_0
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v3, v6

    .line 705
    move-object v6, v3

    move-object v7, v2

    iget v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    iput v7, v6, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 706
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v7, v3

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v8}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    .line 760
    :goto_1
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->prev:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v2, v6

    goto :goto_0

    .line 711
    :pswitch_1
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v3, v6

    .line 712
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 713
    move-object v6, v3

    move-object v7, v2

    iget v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    iput v7, v6, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 714
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v7, v3

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v8}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    .line 718
    :cond_1
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 719
    const/4 v6, 0x0

    move v4, v6

    :goto_2
    move v6, v4

    move-object v7, v2

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 720
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    move-object v5, v6

    .line 721
    move-object v6, v5

    move-object v7, v2

    iget v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iput v7, v6, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 722
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 719
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 725
    :cond_2
    goto :goto_1

    .line 727
    :pswitch_2
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v3, v6

    .line 728
    move-object v6, v3

    move-object v7, v2

    iget v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iput v7, v6, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 729
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 730
    goto :goto_1

    .line 732
    :pswitch_3
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v3, v6

    .line 733
    move-object v6, v3

    move-object v7, v2

    iget v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iput v7, v6, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 734
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v7, v3

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v8}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V

    .line 736
    goto :goto_1

    .line 738
    :pswitch_4
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v3, v6

    .line 739
    move-object v6, v3

    move-object v7, v2

    iget v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    iput v7, v6, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 740
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v7, v3

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v8}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V

    .line 742
    goto/16 :goto_1

    .line 744
    :pswitch_5
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v3, v6

    .line 745
    move-object v6, v3

    move-object v7, v2

    iget v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iput v7, v6, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 746
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v7, v3

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v8}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;II)V

    .line 748
    goto/16 :goto_1

    .line 750
    :pswitch_6
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v3, v6

    .line 751
    move-object v6, v3

    move-object v7, v2

    iget v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iput v7, v6, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 752
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v7, v3

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v8}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V

    .line 754
    goto/16 :goto_1

    .line 763
    :cond_3
    move v6, v1

    if-eqz v6, :cond_4

    .line 764
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v8}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 768
    :cond_4
    move-object v6, v0

    iget v6, v6, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v6, :cond_5

    .line 769
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    .line 770
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 772
    :cond_5
    return-void

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 6

    .prologue
    .line 434
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/support/v4/app/BackStackRecord$Op;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    move-object v2, v3

    .line 435
    move-object v3, v2

    const/4 v4, 0x3

    iput v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 436
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 437
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 439
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 7

    .prologue
    .line 421
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/app/BackStackRecord;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 10

    .prologue
    .line 425
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, v1

    if-nez v4, :cond_0

    .line 426
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Must use non-zero containerViewId"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 429
    :cond_0
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x2

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 430
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 600
    move-object v0, p0

    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Run: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 602
    :cond_0
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v5, :cond_1

    .line 603
    move-object v5, v0

    iget v5, v5, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-gez v5, :cond_1

    .line 604
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "addToBackStack() called after commit()"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 608
    :cond_1
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 610
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v1, v5

    .line 611
    :goto_0
    move-object v5, v1

    if-eqz v5, :cond_a

    .line 612
    move-object v5, v1

    iget v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v5, :pswitch_data_0

    .line 675
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown cmd: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    iget v8, v8, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 614
    :pswitch_0
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v2, v5

    .line 615
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iput v6, v5, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 616
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 679
    :goto_1
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v1, v5

    goto :goto_0

    .line 619
    :pswitch_1
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v2, v5

    .line 620
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    .line 621
    const/4 v5, 0x0

    move v3, v5

    :goto_2
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 622
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    move-object v4, v5

    .line 623
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OP_REPLACE: adding="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 625
    :cond_2
    move-object v5, v2

    if-eqz v5, :cond_3

    move-object v5, v4

    iget v5, v5, Landroid/support/v4/app/Fragment;->mContainerId:I

    move-object v6, v2

    iget v6, v6, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v5, v6, :cond_4

    .line 626
    :cond_3
    move-object v5, v4

    move-object v6, v2

    if-ne v5, v6, :cond_5

    .line 627
    move-object v5, v1

    const/4 v6, 0x0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v2, v7

    iput-object v6, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 621
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 629
    :cond_5
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-nez v5, :cond_6

    .line 630
    move-object v5, v1

    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    .line 632
    :cond_6
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 633
    move-object v5, v4

    move-object v6, v1

    iget v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iput v6, v5, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 634
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v5, :cond_7

    .line 635
    move-object v5, v4

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 636
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bump nesting of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    iget v7, v7, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 639
    :cond_7
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v6, v4

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_3

    .line 644
    :cond_8
    move-object v5, v2

    if-eqz v5, :cond_9

    .line 645
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iput v6, v5, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 646
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 648
    :cond_9
    goto/16 :goto_1

    .line 650
    :pswitch_2
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v2, v5

    .line 651
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iput v6, v5, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 652
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v6, v2

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    .line 653
    goto/16 :goto_1

    .line 655
    :pswitch_3
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v2, v5

    .line 656
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iput v6, v5, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 657
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v6, v2

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V

    .line 658
    goto/16 :goto_1

    .line 660
    :pswitch_4
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v2, v5

    .line 661
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iput v6, v5, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 662
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v6, v2

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V

    .line 663
    goto/16 :goto_1

    .line 665
    :pswitch_5
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v2, v5

    .line 666
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iput v6, v5, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 667
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v6, v2

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V

    .line 668
    goto/16 :goto_1

    .line 670
    :pswitch_6
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v2, v5

    .line 671
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iput v6, v5, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 672
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v6, v2

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;II)V

    .line 673
    goto/16 :goto_1

    .line 682
    :cond_a
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 685
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v5, :cond_b

    .line 686
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->addBackStackState(Landroid/support/v4/app/BackStackRecord;)V

    .line 688
    :cond_b
    return-void

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setBreadCrumbShortTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 4

    .prologue
    .line 537
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 538
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 539
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .locals 4

    .prologue
    .line 543
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 544
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 545
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setBreadCrumbTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 4

    .prologue
    .line 525
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 526
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 527
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .locals 4

    .prologue
    .line 531
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 532
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 533
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;
    .locals 8

    .prologue
    .line 479
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/app/BackStackRecord;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;
    .locals 7

    .prologue
    .line 484
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    .line 485
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    .line 486
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    .line 487
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    .line 488
    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method

.method public setTransition(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 4

    .prologue
    .line 492
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    .line 493
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setTransitionStyle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 4

    .prologue
    .line 497
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    .line 498
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 6

    .prologue
    .line 452
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/support/v4/app/BackStackRecord$Op;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    move-object v2, v3

    .line 453
    move-object v3, v2

    const/4 v4, 0x5

    iput v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 454
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 455
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 457
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 221
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 222
    move-object v2, v1

    const-string v3, "BackStackEntry{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 223
    move-object v2, v1

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 224
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v2, :cond_0

    .line 225
    move-object v2, v1

    const-string v3, " #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 226
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 228
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 229
    move-object v2, v1

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 230
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 232
    :cond_1
    move-object v2, v1

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 233
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
