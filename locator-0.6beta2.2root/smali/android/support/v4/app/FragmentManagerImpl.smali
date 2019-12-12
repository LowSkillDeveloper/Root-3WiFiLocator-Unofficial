.class final Landroid/support/v4/app/FragmentManagerImpl;
.super Landroid/support/v4/app/FragmentManager;
.source "FragmentManager.java"


# static fields
.field static final ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final ANIM_DUR:I = 0xdc

.field public static final ANIM_STYLE_CLOSE_ENTER:I = 0x3

.field public static final ANIM_STYLE_CLOSE_EXIT:I = 0x4

.field public static final ANIM_STYLE_FADE_ENTER:I = 0x5

.field public static final ANIM_STYLE_FADE_EXIT:I = 0x6

.field public static final ANIM_STYLE_OPEN_ENTER:I = 0x1

.field public static final ANIM_STYLE_OPEN_EXIT:I = 0x2

.field static DEBUG:Z = false

.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final HONEYCOMB:Z

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"


# instance fields
.field mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mActivity:Landroid/support/v4/app/FragmentActivity;

.field mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAvailIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Landroid/support/v4/app/FragmentContainer;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mNeedMenuInvalidate:Z

.field mNoTransactionsBecause:Ljava/lang/String;

.field mParent:Landroid/support/v4/app/Fragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mTmpActions:[Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 385
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    .line 388
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z

    .line 711
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 712
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    .line 713
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 714
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

    return-void

    .line 388
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 6

    .prologue
    .line 384
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/app/FragmentManager;-><init>()V

    .line 411
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 423
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 424
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 426
    move-object v1, v0

    new-instance v2, Landroid/support/v4/app/FragmentManagerImpl$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/app/FragmentManagerImpl$1;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    iput-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    return-void
.end method

.method private checkStateLoss()V
    .locals 6

    .prologue
    .line 1326
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    if-eqz v1, :cond_0

    .line 1327
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1330
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1331
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not perform this action inside of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1334
    :cond_1
    return-void
.end method

.method static makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;
    .locals 9

    .prologue
    .line 734
    move-object v0, p0

    move v1, p1

    move v2, p2

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v3, v4

    .line 735
    move-object v4, v3

    sget-object v5, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 736
    move-object v4, v3

    const-wide/16 v5, 0xdc

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 737
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
    .locals 19

    .prologue
    .line 720
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    new-instance v8, Landroid/view/animation/AnimationSet;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v5, v8

    .line 721
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    move v10, v1

    move v11, v2

    move v12, v1

    move v13, v2

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    const/16 v16, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v6, v8

    .line 723
    move-object v8, v6

    sget-object v9, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v9}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 724
    move-object v8, v6

    const-wide/16 v9, 0xdc

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 725
    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 726
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    move v10, v3

    move v11, v4

    invoke-direct {v9, v10, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v7, v8

    .line 727
    move-object v8, v7

    sget-object v9, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v9}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 728
    move-object v8, v7

    const-wide/16 v9, 0xdc

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 729
    move-object v8, v5

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 730
    move-object v8, v5

    move-object v0, v8

    return-object v0
.end method

.method public static reverseTransit(I)I
    .locals 3

    .prologue
    .line 2013
    move v0, p0

    const/4 v2, 0x0

    move v1, v2

    .line 2014
    move v2, v0

    sparse-switch v2, :sswitch_data_0

    .line 2025
    :goto_0
    move v2, v1

    move v0, v2

    return v0

    .line 2016
    :sswitch_0
    const/16 v2, 0x2002

    move v1, v2

    .line 2017
    goto :goto_0

    .line 2019
    :sswitch_1
    const/16 v2, 0x1001

    move v1, v2

    .line 2020
    goto :goto_0

    .line 2022
    :sswitch_2
    const/16 v2, 0x1003

    move v1, v2

    goto :goto_0

    .line 2014
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .locals 11

    .prologue
    .line 434
    move-object v0, p0

    move-object v1, p1

    const-string v5, "FragmentManager"

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 435
    const-string v5, "FragmentManager"

    const-string v6, "Activity state:"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 436
    new-instance v5, Landroid/support/v4/util/LogWriter;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "FragmentManager"

    invoke-direct {v6, v7}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 437
    new-instance v5, Ljava/io/PrintWriter;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-direct {v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v5

    .line 438
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v5, :cond_0

    .line 440
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const-string v6, "  "

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :goto_0
    move-object v5, v1

    throw v5

    .line 441
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 442
    const-string v5, "FragmentManager"

    const-string v6, "Failed dumping state"

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 443
    goto :goto_0

    .line 446
    :cond_0
    move-object v5, v0

    :try_start_1
    const-string v6, "  "

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 449
    goto :goto_0

    .line 447
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 448
    const-string v5, "FragmentManager"

    const-string v6, "Failed dumping state"

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    goto :goto_0
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 4

    .prologue
    .line 2037
    move v0, p0

    move v1, p1

    const/4 v3, -0x1

    move v2, v3

    .line 2038
    move v3, v0

    sparse-switch v3, :sswitch_data_0

    .line 2049
    :goto_0
    move v3, v2

    move v0, v3

    return v0

    .line 2040
    :sswitch_0
    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    move v2, v3

    .line 2041
    goto :goto_0

    .line 2040
    :cond_0
    const/4 v3, 0x2

    goto :goto_1

    .line 2043
    :sswitch_1
    move v3, v1

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    :goto_2
    move v2, v3

    .line 2044
    goto :goto_0

    .line 2043
    :cond_1
    const/4 v3, 0x4

    goto :goto_2

    .line 2046
    :sswitch_2
    move v3, v1

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    :goto_3
    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    goto :goto_3

    .line 2038
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method addBackStackState(Landroid/support/v4/app/BackStackRecord;)V
    .locals 6

    .prologue
    .line 1476
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 1477
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1479
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1480
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 1481
    return-void
.end method

.method public addFragment(Landroid/support/v4/app/Fragment;Z)V
    .locals 8

    .prologue
    .line 1152
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1153
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1155
    :cond_0
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1156
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->makeActive(Landroid/support/v4/app/Fragment;)V

    .line 1157
    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v3, :cond_4

    .line 1158
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1159
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment already added: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1161
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1162
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1163
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1164
    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v3, :cond_3

    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v3, :cond_3

    .line 1165
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1167
    :cond_3
    move v3, v2

    if-eqz v3, :cond_4

    .line 1168
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V

    .line 1171
    :cond_4
    return-void
.end method

.method public addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 6

    .prologue
    .line 530
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 531
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 533
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 534
    return-void
.end method

.method public allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I
    .locals 9

    .prologue
    .line 1356
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    monitor-enter v5

    .line 1357
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_3

    .line 1358
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 1359
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1361
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .line 1362
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting back stack index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1363
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1364
    move v5, v3

    move-object v6, v2

    monitor-exit v6

    move v0, v5

    .line 1370
    :goto_0
    return v0

    .line 1367
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v3, v5

    .line 1368
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding back stack index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1369
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move v6, v3

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1370
    move v5, v3

    move-object v6, v2

    monitor-exit v6

    move v0, v5

    goto :goto_0

    .line 1372
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public attachActivity(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V
    .locals 8

    .prologue
    .line 1844
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Already attached"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1845
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 1846
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    .line 1847
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    .line 1848
    return-void
.end method

.method public attachFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 11

    .prologue
    .line 1248
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attach: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1249
    :cond_0
    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v4, :cond_5

    .line 1250
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1251
    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v4, :cond_5

    .line 1252
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 1253
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1255
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1256
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fragment already added: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1258
    :cond_2
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add from attach: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1259
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1260
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1261
    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v4, :cond_4

    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v4, :cond_4

    .line 1262
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1264
    :cond_4
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    move v7, v2

    move v8, v3

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1267
    :cond_5
    return-void
.end method

.method public beginTransaction()Landroid/support/v4/app/FragmentTransaction;
    .locals 5

    .prologue
    .line 456
    move-object v0, p0

    new-instance v1, Landroid/support/v4/app/BackStackRecord;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    move-object v0, v1

    return-object v0
.end method

.method public detachFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 11

    .prologue
    .line 1229
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detach: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1230
    :cond_0
    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v4, :cond_4

    .line 1231
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1232
    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v4, :cond_4

    .line 1234
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 1235
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove from detach: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1236
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 1238
    :cond_2
    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v4, :cond_3

    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v4, :cond_3

    .line 1239
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1241
    :cond_3
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1242
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x1

    move v7, v2

    move v8, v3

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1245
    :cond_4
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 4

    .prologue
    .line 1860
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1861
    move-object v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1862
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .prologue
    .line 1905
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 1906
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1907
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    move-object v3, v4

    .line 1908
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 1909
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1906
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1913
    :cond_1
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 1988
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 1989
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1990
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    move-object v3, v4

    .line 1991
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 1992
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1993
    const/4 v4, 0x1

    move v0, v4

    .line 1998
    :goto_1
    return v0

    .line 1989
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1998
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public dispatchCreate()V
    .locals 4

    .prologue
    .line 1855
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1856
    move-object v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1857
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 11

    .prologue
    .line 1927
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v7, 0x0

    move v3, v7

    .line 1928
    const/4 v7, 0x0

    move-object v4, v7

    .line 1929
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    .line 1930
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 1931
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/Fragment;

    move-object v6, v7

    .line 1932
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 1933
    move-object v7, v6

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1934
    const/4 v7, 0x1

    move v3, v7

    .line 1935
    move-object v7, v4

    if-nez v7, :cond_0

    .line 1936
    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v7

    .line 1938
    :cond_0
    move-object v7, v4

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1930
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1944
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    .line 1945
    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 1946
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/Fragment;

    move-object v6, v7

    .line 1947
    move-object v7, v4

    if-eqz v7, :cond_3

    move-object v7, v4

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1948
    :cond_3
    move-object v7, v6

    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    .line 1945
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1953
    :cond_5
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    .line 1955
    move v7, v3

    move v0, v7

    return v0
.end method

.method public dispatchDestroy()V
    .locals 4

    .prologue
    .line 1896
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    .line 1897
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v1

    .line 1898
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1899
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 1900
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    .line 1901
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    .line 1902
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 4

    .prologue
    .line 1892
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1893
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 5

    .prologue
    .line 1916
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1917
    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1918
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    move-object v2, v3

    .line 1919
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1920
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->performLowMemory()V

    .line 1917
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1924
    :cond_1
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 1974
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 1975
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1976
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    move-object v3, v4

    .line 1977
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 1978
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1979
    const/4 v4, 0x1

    move v0, v4

    .line 1984
    :goto_1
    return v0

    .line 1975
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1984
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 6

    .prologue
    .line 2002
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 2003
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 2004
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    move-object v3, v4

    .line 2005
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 2006
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2003
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2010
    :cond_1
    return-void
.end method

.method public dispatchPause()V
    .locals 4

    .prologue
    .line 1875
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1876
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    .prologue
    .line 1959
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x0

    move v2, v5

    .line 1960
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 1961
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1962
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    move-object v4, v5

    .line 1963
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 1964
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1965
    const/4 v5, 0x1

    move v2, v5

    .line 1961
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1970
    :cond_1
    move v5, v2

    move v0, v5

    return v0
.end method

.method public dispatchReallyStop()V
    .locals 4

    .prologue
    .line 1888
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1889
    return-void
.end method

.method public dispatchResume()V
    .locals 4

    .prologue
    .line 1870
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1871
    move-object v1, v0

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1872
    return-void
.end method

.method public dispatchStart()V
    .locals 4

    .prologue
    .line 1865
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1866
    move-object v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1867
    return-void
.end method

.method public dispatchStop()V
    .locals 4

    .prologue
    .line 1882
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1884
    move-object v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1885
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 600
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 603
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v11, :cond_1

    .line 604
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 605
    move v11, v6

    if-lez v11, :cond_1

    .line 606
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "Active Fragments in "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 607
    move-object v11, v3

    move-object v12, v0

    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 608
    move-object v11, v3

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    const/4 v11, 0x0

    move v7, v11

    :goto_0
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_1

    .line 610
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/Fragment;

    move-object v8, v11

    .line 611
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 612
    move-object v11, v3

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 613
    move-object v11, v8

    if-eqz v11, :cond_0

    .line 614
    move-object v11, v8

    move-object v12, v5

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 609
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 620
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v11, :cond_2

    .line 621
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 622
    move v11, v6

    if-lez v11, :cond_2

    .line 623
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "Added Fragments:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    const/4 v11, 0x0

    move v7, v11

    :goto_1
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_2

    .line 625
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/Fragment;

    move-object v8, v11

    .line 626
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 627
    move-object v11, v3

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v8

    invoke-virtual {v12}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 632
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v11, :cond_3

    .line 633
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 634
    move v11, v6

    if-lez v11, :cond_3

    .line 635
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "Fragments Created Menus:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    const/4 v11, 0x0

    move v7, v11

    :goto_2
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_3

    .line 637
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/Fragment;

    move-object v8, v11

    .line 638
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 639
    move-object v11, v3

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v8

    invoke-virtual {v12}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 644
    :cond_3
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v11, :cond_4

    .line 645
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 646
    move v11, v6

    if-lez v11, :cond_4

    .line 647
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "Back Stack:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    const/4 v11, 0x0

    move v7, v11

    :goto_3
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_4

    .line 649
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/BackStackRecord;

    move-object v8, v11

    .line 650
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 651
    move-object v11, v3

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v8

    invoke-virtual {v12}, Landroid/support/v4/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    move-object v11, v8

    move-object v12, v5

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 648
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 657
    :cond_4
    move-object v11, v0

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v7, v12

    monitor-enter v11

    .line 658
    move-object v11, v0

    :try_start_0
    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v11, :cond_5

    .line 659
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 660
    move v11, v6

    if-lez v11, :cond_5

    .line 661
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "Back Stack Indices:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    const/4 v11, 0x0

    move v8, v11

    :goto_4
    move v11, v8

    move v12, v6

    if-ge v11, v12, :cond_5

    .line 663
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/BackStackRecord;

    move-object v9, v11

    .line 664
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 665
    move-object v11, v3

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 662
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 670
    :cond_5
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v11, :cond_6

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 671
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "mAvailBackStackIndices: "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 672
    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    :cond_6
    move-object v11, v7

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v11, :cond_7

    .line 677
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 678
    move v11, v6

    if-lez v11, :cond_7

    .line 679
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "Pending Actions:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    const/4 v11, 0x0

    move v7, v11

    :goto_5
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_7

    .line 681
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Runnable;

    move-object v8, v11

    .line 682
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 683
    move-object v11, v3

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 680
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 674
    :catchall_0
    move-exception v11

    move-object v10, v11

    move-object v11, v7

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v10

    throw v11

    .line 688
    :cond_7
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "FragmentManager misc state:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 689
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  mActivity="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 690
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  mContainer="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 691
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v11, :cond_8

    .line 692
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  mParent="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 694
    :cond_8
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  mCurState="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 695
    move-object v11, v3

    const-string v12, " mStateSaved="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget-boolean v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Z)V

    .line 696
    move-object v11, v3

    const-string v12, " mDestroyed="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget-boolean v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Z)V

    .line 697
    move-object v11, v0

    iget-boolean v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v11, :cond_9

    .line 698
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  mNeedMenuInvalidate="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 699
    move-object v11, v3

    move-object v12, v0

    iget-boolean v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Z)V

    .line 701
    :cond_9
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v11, :cond_a

    .line 702
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  mNoTransactionsBecause="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 703
    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 705
    :cond_a
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v11, :cond_b

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_b

    .line 706
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  mAvailIndices: "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 707
    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    :cond_b
    return-void
.end method

.method public enqueueAction(Ljava/lang/Runnable;Z)V
    .locals 9

    .prologue
    .line 1337
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v2

    if-nez v5, :cond_0

    .line 1338
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 1340
    :cond_0
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 1341
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v5, :cond_1

    .line 1342
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Activity has been destroyed"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1352
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5

    .line 1344
    :cond_1
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v5, :cond_2

    .line 1345
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 1347
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1348
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1349
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v5, v5, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1350
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v5, v5, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 1352
    :cond_3
    move-object v5, v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1353
    return-void
.end method

.method public execPendingActions()Z
    .locals 9

    .prologue
    .line 1415
    move-object v0, p0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v5, :cond_0

    .line 1416
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Recursive entry to executePendingTransactions"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1419
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v6, v6, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    if-eq v5, v6, :cond_1

    .line 1420
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Must be called from main thread of process"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1423
    :cond_1
    const/4 v5, 0x0

    move v1, v5

    .line 1428
    :goto_0
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 1429
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 1430
    :cond_2
    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1451
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v5, :cond_9

    .line 1452
    const/4 v5, 0x0

    move v2, v5

    .line 1453
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 1454
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    move-object v4, v5

    .line 1455
    move-object v5, v4

    if-eqz v5, :cond_3

    move-object v5, v4

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v5, :cond_3

    .line 1456
    move v5, v2

    move-object v6, v4

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v6}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v6

    or-int/2addr v5, v6

    move v2, v5

    .line 1453
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1433
    :cond_4
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 1434
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    if-eqz v5, :cond_5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    array-length v5, v5

    move v6, v2

    if-ge v5, v6, :cond_6

    .line 1435
    :cond_5
    move-object v5, v0

    move v6, v2

    new-array v6, v6, [Ljava/lang/Runnable;

    iput-object v6, v5, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    .line 1437
    :cond_6
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .line 1438
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1439
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v5, v5, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1440
    move-object v5, v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1442
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1443
    const/4 v5, 0x0

    move v3, v5

    :goto_2
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_7

    .line 1444
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    move v6, v3

    aget-object v5, v5, v6

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1445
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    move v6, v3

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 1443
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1440
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v4

    throw v5

    .line 1447
    :cond_7
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1448
    const/4 v5, 0x1

    move v1, v5

    .line 1449
    goto/16 :goto_0

    .line 1459
    :cond_8
    move v5, v2

    if-nez v5, :cond_9

    .line 1460
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 1461
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1464
    :cond_9
    move v5, v1

    move v0, v5

    return v0
.end method

.method public executePendingTransactions()Z
    .locals 2

    .prologue
    .line 461
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public findFragmentById(I)Landroid/support/v4/app/Fragment;
    .locals 6

    .prologue
    .line 1270
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 1272
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 1273
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    move-object v3, v4

    .line 1274
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    iget v4, v4, Landroid/support/v4/app/Fragment;->mFragmentId:I

    move v5, v1

    if-ne v4, v5, :cond_0

    .line 1275
    move-object v4, v3

    move-object v0, v4

    .line 1288
    :goto_1
    return-object v0

    .line 1272
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1279
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 1281
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_2
    move v4, v2

    if-ltz v4, :cond_3

    .line 1282
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    move-object v3, v4

    .line 1283
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    iget v4, v4, Landroid/support/v4/app/Fragment;->mFragmentId:I

    move v5, v1

    if-ne v4, v5, :cond_2

    .line 1284
    move-object v4, v3

    move-object v0, v4

    goto :goto_1

    .line 1281
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1288
    :cond_3
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 6

    .prologue
    .line 1292
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    move-object v4, v1

    if-eqz v4, :cond_1

    .line 1294
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 1295
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    move-object v3, v4

    .line 1296
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v1

    move-object v5, v3

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1297
    move-object v4, v3

    move-object v0, v4

    .line 1310
    :goto_1
    return-object v0

    .line 1294
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1301
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    move-object v4, v1

    if-eqz v4, :cond_3

    .line 1303
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_2
    move v4, v2

    if-ltz v4, :cond_3

    .line 1304
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    move-object v3, v4

    .line 1305
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v1

    move-object v5, v3

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1306
    move-object v4, v3

    move-object v0, v4

    goto :goto_1

    .line 1303
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1310
    :cond_3
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 7

    .prologue
    .line 1314
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    move-object v4, v1

    if-eqz v4, :cond_1

    .line 1315
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 1316
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    move-object v3, v4

    .line 1317
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v3, v5

    if-eqz v4, :cond_0

    .line 1318
    move-object v4, v3

    move-object v0, v4

    .line 1322
    :goto_1
    return-object v0

    .line 1315
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1322
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public freeBackStackIndex(I)V
    .locals 8

    .prologue
    .line 1401
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 1402
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1403
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 1404
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1406
    :cond_0
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Freeing back stack index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1407
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    move v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1408
    move-object v4, v2

    monitor-exit v4

    .line 1409
    return-void

    .line 1408
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .locals 4

    .prologue
    .line 525
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-object v0, v2

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .locals 2

    .prologue
    .line 520
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 11

    .prologue
    .line 554
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    move-object v6, v2

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    move v3, v5

    .line 555
    move v5, v3

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 556
    const/4 v5, 0x0

    move-object v0, v5

    .line 567
    :goto_0
    return-object v0

    .line 558
    :cond_0
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 559
    move-object v5, v0

    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fragement no longer exists for key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 562
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    move-object v4, v5

    .line 563
    move-object v5, v4

    if-nez v5, :cond_2

    .line 564
    move-object v5, v0

    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fragement no longer exists for key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 567
    :cond_2
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method public hideFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 11

    .prologue
    .line 1191
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hide: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1192
    :cond_0
    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v5, :cond_4

    .line 1193
    move-object v5, v1

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1194
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 1195
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x1

    move v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v5

    move-object v4, v5

    .line 1197
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 1198
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1200
    :cond_1
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1202
    :cond_2
    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v5, :cond_3

    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v5, :cond_3

    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v5, :cond_3

    .line 1203
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1205
    :cond_3
    move-object v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1207
    :cond_4
    return-void
.end method

.method loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .locals 12

    .prologue
    .line 742
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v7, v1

    move v8, v2

    move v9, v3

    move-object v10, v1

    iget v10, v10, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v7

    move-object v5, v7

    .line 744
    move-object v7, v5

    if-eqz v7, :cond_0

    .line 745
    move-object v7, v5

    move-object v0, v7

    .line 796
    :goto_0
    return-object v0

    .line 748
    :cond_0
    move-object v7, v1

    iget v7, v7, Landroid/support/v4/app/Fragment;->mNextAnim:I

    if-eqz v7, :cond_1

    .line 749
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    move-object v8, v1

    iget v8, v8, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    move-object v6, v7

    .line 750
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 751
    move-object v7, v6

    move-object v0, v7

    goto :goto_0

    .line 755
    :cond_1
    move v7, v2

    if-nez v7, :cond_2

    .line 756
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 759
    :cond_2
    move v7, v2

    move v8, v3

    invoke-static {v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v7

    move v6, v7

    .line 760
    move v7, v6

    if-gez v7, :cond_3

    .line 761
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 764
    :cond_3
    move v7, v6

    packed-switch v7, :pswitch_data_0

    .line 779
    move v7, v4

    if-nez v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 780
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move v4, v7

    .line 782
    :cond_4
    move v7, v4

    if-nez v7, :cond_5

    .line 783
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 766
    :pswitch_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/high16 v8, 0x3f900000    # 1.125f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 768
    :pswitch_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f79999a    # 0.975f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 770
    :pswitch_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v8, 0x3f79999a    # 0.975f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 772
    :pswitch_3
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f89999a    # 1.075f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 774
    :pswitch_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 776
    :pswitch_5
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 796
    :cond_5
    const/4 v7, 0x0

    move-object v0, v7

    goto/16 :goto_0

    .line 764
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method makeActive(Landroid/support/v4/app/Fragment;)V
    .locals 7

    .prologue
    .line 1118
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v2, :cond_0

    .line 1134
    :goto_0
    return-void

    .line 1122
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_4

    .line 1123
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 1124
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1126
    :cond_2
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    .line 1127
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1133
    :goto_1
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allocated fragment index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1134
    :cond_3
    goto :goto_0

    .line 1130
    :cond_4
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    .line 1131
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/Fragment;->mIndex:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1
.end method

.method makeInactive(Landroid/support/v4/app/Fragment;)V
    .locals 6

    .prologue
    .line 1137
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v2, :cond_0

    .line 1149
    :goto_0
    return-void

    .line 1141
    :cond_0
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Freeing fragment index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1142
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/Fragment;->mIndex:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1143
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 1144
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1146
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1147
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->invalidateSupportFragment(Ljava/lang/String;)V

    .line 1148
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->initState()V

    .line 1149
    goto :goto_0
.end method

.method moveToState(IIIZ)V
    .locals 15

    .prologue
    .line 1074
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v8, :cond_0

    move v8, v1

    if-eqz v8, :cond_0

    .line 1075
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string v10, "No activity"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1078
    :cond_0
    move v8, v4

    if-nez v8, :cond_1

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    move v9, v1

    if-ne v8, v9, :cond_1

    .line 1104
    :goto_0
    return-void

    .line 1082
    :cond_1
    move-object v8, v0

    move v9, v1

    iput v9, v8, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 1083
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    .line 1084
    const/4 v8, 0x0

    move v5, v8

    .line 1085
    const/4 v8, 0x0

    move v6, v8

    :goto_1
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1086
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    move-object v7, v8

    .line 1087
    move-object v8, v7

    if-eqz v8, :cond_2

    .line 1088
    move-object v8, v0

    move-object v9, v7

    move v10, v1

    move v11, v2

    move v12, v3

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1089
    move-object v8, v7

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v8, :cond_2

    .line 1090
    move v8, v5

    move-object v9, v7

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v9}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v9

    or-int/2addr v8, v9

    move v5, v8

    .line 1085
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1095
    :cond_3
    move v8, v5

    if-nez v8, :cond_4

    .line 1096
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1099
    :cond_4
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v8, :cond_5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v8, :cond_5

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_5

    .line 1100
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 1101
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1104
    :cond_5
    goto :goto_0
.end method

.method moveToState(IZ)V
    .locals 8

    .prologue
    .line 1070
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 1071
    return-void
.end method

.method moveToState(Landroid/support/v4/app/Fragment;)V
    .locals 8

    .prologue
    .line 1066
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1067
    return-void
.end method

.method moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
    .locals 15

    .prologue
    .line 814
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v8, v1

    iget-boolean v8, v8, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v8, :cond_0

    move-object v8, v1

    iget-boolean v8, v8, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v8, :cond_1

    :cond_0
    move v8, v2

    const/4 v9, 0x1

    if-le v8, v9, :cond_1

    .line 815
    const/4 v8, 0x1

    move v2, v8

    .line 817
    :cond_1
    move-object v8, v1

    iget-boolean v8, v8, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v8, :cond_2

    move v8, v2

    move-object v9, v1

    iget v9, v9, Landroid/support/v4/app/Fragment;->mState:I

    if-le v8, v9, :cond_2

    .line 819
    move-object v8, v1

    iget v8, v8, Landroid/support/v4/app/Fragment;->mState:I

    move v2, v8

    .line 823
    :cond_2
    move-object v8, v1

    iget-boolean v8, v8, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v8, :cond_3

    move-object v8, v1

    iget v8, v8, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v9, 0x4

    if-ge v8, v9, :cond_3

    move v8, v2

    const/4 v9, 0x3

    if-le v8, v9, :cond_3

    .line 824
    const/4 v8, 0x3

    move v2, v8

    .line 826
    :cond_3
    move-object v8, v1

    iget v8, v8, Landroid/support/v4/app/Fragment;->mState:I

    move v9, v2

    if-ge v8, v9, :cond_1d

    .line 830
    move-object v8, v1

    iget-boolean v8, v8, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v8, :cond_4

    move-object v8, v1

    iget-boolean v8, v8, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-nez v8, :cond_4

    .line 1063
    :goto_0
    return-void

    .line 833
    :cond_4
    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v8, :cond_5

    .line 838
    move-object v8, v1

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 839
    move-object v8, v0

    move-object v9, v1

    move-object v10, v1

    iget v10, v10, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 841
    :cond_5
    move-object v8, v1

    iget v8, v8, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v8, :pswitch_data_0

    .line 1062
    :cond_6
    :goto_1
    move-object v8, v1

    move v9, v2

    iput v9, v8, Landroid/support/v4/app/Fragment;->mState:I

    .line 1063
    goto :goto_0

    .line 843
    :pswitch_0
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_7

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "moveto CREATED: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 844
    :cond_7
    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v8, :cond_9

    .line 845
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v10, "android:view_state"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v9

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 847
    move-object v8, v1

    move-object v9, v0

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v11, "android:target_state"

    invoke-virtual {v9, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v9

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 849
    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v8, :cond_8

    .line 850
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v10, "android:target_req_state"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, v8, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    .line 853
    :cond_8
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v10, "android:user_visible_hint"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 855
    move-object v8, v1

    iget-boolean v8, v8, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v8, :cond_9

    .line 856
    move-object v8, v1

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 857
    move v8, v2

    const/4 v9, 0x3

    if-le v8, v9, :cond_9

    .line 858
    const/4 v8, 0x3

    move v2, v8

    .line 862
    :cond_9
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 863
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 864
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v9, :cond_a

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    :goto_2
    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 866
    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 867
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v8, v9}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 868
    move-object v8, v1

    iget-boolean v8, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v8, :cond_b

    .line 869
    new-instance v8, Landroid/support/v4/app/SuperNotCalledException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fragment "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " did not call through to super.onAttach()"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 864
    :cond_a
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v9, v9, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    goto :goto_2

    .line 872
    :cond_b
    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    if-nez v8, :cond_c

    .line 873
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 876
    :cond_c
    move-object v8, v1

    iget-boolean v8, v8, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v8, :cond_d

    .line 877
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v9}, Landroid/support/v4/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 879
    :cond_d
    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 880
    move-object v8, v1

    iget-boolean v8, v8, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v8, :cond_f

    .line 884
    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v10, v11}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v10

    const/4 v11, 0x0

    move-object v12, v1

    iget-object v12, v12, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v9

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 886
    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v8, :cond_1b

    .line 887
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 888
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v9}, Landroid/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v9

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 889
    move-object v8, v1

    iget-boolean v8, v8, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v8, :cond_e

    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 890
    :cond_e
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 896
    :cond_f
    :goto_3
    :pswitch_1
    move v8, v2

    const/4 v9, 0x1

    if-le v8, v9, :cond_17

    .line 897
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_10

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 898
    :cond_10
    move-object v8, v1

    iget-boolean v8, v8, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-nez v8, :cond_15

    .line 899
    const/4 v8, 0x0

    move-object v6, v8

    .line 900
    move-object v8, v1

    iget v8, v8, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-eqz v8, :cond_11

    .line 901
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    move-object v9, v1

    iget v9, v9, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-interface {v8, v9}, Landroid/support/v4/app/FragmentContainer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    move-object v6, v8

    .line 902
    move-object v8, v6

    if-nez v8, :cond_11

    move-object v8, v1

    iget-boolean v8, v8, Landroid/support/v4/app/Fragment;->mRestored:Z

    if-nez v8, :cond_11

    .line 903
    move-object v8, v0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No view found for id 0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    iget v12, v12, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v12}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object v13, v1

    iget v13, v13, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") for fragment "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 910
    :cond_11
    move-object v8, v1

    move-object v9, v6

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 911
    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v10, v11}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v10

    move-object v11, v6

    move-object v12, v1

    iget-object v12, v12, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v9

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 913
    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v8, :cond_1c

    .line 914
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 915
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v9}, Landroid/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v9

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 916
    move-object v8, v6

    if-eqz v8, :cond_13

    .line 917
    move-object v8, v0

    move-object v9, v1

    move v10, v3

    const/4 v11, 0x1

    move v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v8

    move-object v7, v8

    .line 919
    move-object v8, v7

    if-eqz v8, :cond_12

    .line 920
    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 922
    :cond_12
    move-object v8, v6

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 924
    :cond_13
    move-object v8, v1

    iget-boolean v8, v8, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v8, :cond_14

    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 925
    :cond_14
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 931
    :cond_15
    :goto_4
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v9}, Landroid/support/v4/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 932
    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v8, :cond_16

    .line 933
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v9}, Landroid/support/v4/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 935
    :cond_16
    move-object v8, v1

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 939
    :cond_17
    :pswitch_2
    move v8, v2

    const/4 v9, 0x3

    if-le v8, v9, :cond_19

    .line 940
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_18

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "moveto STARTED: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 941
    :cond_18
    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->performStart()V

    .line 944
    :cond_19
    :pswitch_3
    move v8, v2

    const/4 v9, 0x4

    if-le v8, v9, :cond_6

    .line 945
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_1a

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "moveto RESUMED: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 946
    :cond_1a
    move-object v8, v1

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->mResumed:Z

    .line 947
    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->performResume()V

    .line 948
    move-object v8, v1

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 949
    move-object v8, v1

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_1

    .line 892
    :cond_1b
    move-object v8, v1

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_3

    .line 927
    :cond_1c
    move-object v8, v1

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_4

    .line 952
    :cond_1d
    move-object v8, v1

    iget v8, v8, Landroid/support/v4/app/Fragment;->mState:I

    move v9, v2

    if-le v8, v9, :cond_6

    .line 953
    move-object v8, v1

    iget v8, v8, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v8, :pswitch_data_1

    goto/16 :goto_1

    .line 1016
    :cond_1e
    :goto_5
    :pswitch_4
    move v8, v2

    const/4 v9, 0x1

    if-ge v8, v9, :cond_6

    .line 1017
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v8, :cond_1f

    .line 1018
    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v8, :cond_1f

    .line 1025
    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    move-object v6, v8

    .line 1026
    move-object v8, v1

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1027
    move-object v8, v6

    invoke-virtual {v8}, Landroid/view/View;->clearAnimation()V

    .line 1030
    :cond_1f
    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v8, :cond_2b

    .line 1035
    move-object v8, v1

    move v9, v2

    iput v9, v8, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    .line 1036
    const/4 v8, 0x1

    move v2, v8

    goto/16 :goto_1

    .line 955
    :pswitch_5
    move v8, v2

    const/4 v9, 0x5

    if-ge v8, v9, :cond_21

    .line 956
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_20

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "movefrom RESUMED: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 957
    :cond_20
    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->performPause()V

    .line 958
    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->mResumed:Z

    .line 961
    :cond_21
    :pswitch_6
    move v8, v2

    const/4 v9, 0x4

    if-ge v8, v9, :cond_23

    .line 962
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_22

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "movefrom STARTED: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 963
    :cond_22
    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->performStop()V

    .line 966
    :cond_23
    :pswitch_7
    move v8, v2

    const/4 v9, 0x3

    if-ge v8, v9, :cond_25

    .line 967
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_24

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "movefrom STOPPED: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 968
    :cond_24
    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->performReallyStop()V

    .line 971
    :cond_25
    :pswitch_8
    move v8, v2

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1e

    .line 972
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_26

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 973
    :cond_26
    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v8, :cond_27

    .line 976
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_27

    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v8, :cond_27

    .line 977
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V

    .line 980
    :cond_27
    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->performDestroyView()V

    .line 981
    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v8, :cond_2a

    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v8, :cond_2a

    .line 982
    const/4 v8, 0x0

    move-object v6, v8

    .line 983
    move-object v8, v0

    iget v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-lez v8, :cond_28

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v8, :cond_28

    .line 984
    move-object v8, v0

    move-object v9, v1

    move v10, v3

    const/4 v11, 0x0

    move v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v8

    move-object v6, v8

    .line 987
    :cond_28
    move-object v8, v6

    if-eqz v8, :cond_29

    .line 988
    move-object v8, v1

    move-object v7, v8

    .line 989
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 990
    move-object v8, v1

    move v9, v2

    iput v9, v8, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    .line 991
    move-object v8, v6

    new-instance v9, Landroid/support/v4/app/FragmentManagerImpl$5;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move-object v12, v7

    invoke-direct {v10, v11, v12}, Landroid/support/v4/app/FragmentManagerImpl$5;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v8, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1007
    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1009
    :cond_29
    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1011
    :cond_2a
    move-object v8, v1

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1012
    move-object v8, v1

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1013
    move-object v8, v1

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_5

    .line 1038
    :cond_2b
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_2c

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "movefrom CREATED: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1039
    :cond_2c
    move-object v8, v1

    iget-boolean v8, v8, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v8, :cond_2d

    .line 1040
    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->performDestroy()V

    .line 1043
    :cond_2d
    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1044
    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 1045
    move-object v8, v1

    iget-boolean v8, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v8, :cond_2e

    .line 1046
    new-instance v8, Landroid/support/v4/app/SuperNotCalledException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fragment "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " did not call through to super.onDetach()"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1049
    :cond_2e
    move v8, v5

    if-nez v8, :cond_6

    .line 1050
    move-object v8, v1

    iget-boolean v8, v8, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v8, :cond_2f

    .line 1051
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->makeInactive(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_1

    .line 1053
    :cond_2f
    move-object v8, v1

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 1054
    move-object v8, v1

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    goto/16 :goto_1

    .line 841
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 953
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .locals 3

    .prologue
    .line 1851
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1852
    return-void
.end method

.method public performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V
    .locals 8

    .prologue
    .line 800
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v2, :cond_1

    .line 801
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v2, :cond_0

    .line 803
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 809
    :goto_0
    return-void

    .line 806
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 807
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 809
    :cond_1
    goto :goto_0
.end method

.method public popBackStack()V
    .locals 6

    .prologue
    .line 466
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Landroid/support/v4/app/FragmentManagerImpl$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/app/FragmentManagerImpl$2;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 471
    return-void
.end method

.method public popBackStack(II)V
    .locals 10

    .prologue
    .line 498
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    if-gez v3, :cond_0

    .line 499
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 501
    :cond_0
    move-object v3, v0

    new-instance v4, Landroid/support/v4/app/FragmentManagerImpl$4;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl$4;-><init>(Landroid/support/v4/app/FragmentManagerImpl;II)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 506
    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 10

    .prologue
    .line 482
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    new-instance v4, Landroid/support/v4/app/FragmentManagerImpl$3;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl$3;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;I)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 487
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 6

    .prologue
    .line 475
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 476
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    move-result v1

    .line 477
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 9

    .prologue
    .line 510
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 511
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    move-result v3

    .line 512
    move v3, v1

    if-gez v3, :cond_0

    .line 513
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 515
    :cond_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 8

    .prologue
    .line 491
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 492
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    move-result v3

    .line 493
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    move-object v5, v1

    const/4 v6, -0x1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
    .locals 14

    .prologue
    .line 1484
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    .line 1485
    const/4 v9, 0x0

    move v0, v9

    .line 1543
    :goto_0
    return v0

    .line 1487
    :cond_0
    move-object v9, v2

    if-nez v9, :cond_2

    move v9, v3

    if-gez v9, :cond_2

    move v9, v4

    const/4 v10, 0x1

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_2

    .line 1488
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v5, v9

    .line 1489
    move v9, v5

    if-gez v9, :cond_1

    .line 1490
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 1492
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/BackStackRecord;

    move-object v6, v9

    .line 1493
    move-object v9, v6

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v4/app/BackStackRecord;->popFromBackStack(Z)V

    .line 1494
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 1543
    :goto_1
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 1496
    :cond_2
    const/4 v9, -0x1

    move v5, v9

    .line 1497
    move-object v9, v2

    if-nez v9, :cond_3

    move v9, v3

    if-ltz v9, :cond_a

    .line 1500
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v5, v9

    .line 1501
    :goto_2
    move v9, v5

    if-ltz v9, :cond_4

    .line 1502
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/BackStackRecord;

    move-object v6, v9

    .line 1503
    move-object v9, v2

    if-eqz v9, :cond_5

    move-object v9, v2

    move-object v10, v6

    invoke-virtual {v10}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1511
    :cond_4
    :goto_3
    move v9, v5

    if-gez v9, :cond_7

    .line 1512
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 1506
    :cond_5
    move v9, v3

    if-ltz v9, :cond_6

    move v9, v3

    move-object v10, v6

    iget v10, v10, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ne v9, v10, :cond_6

    .line 1507
    goto :goto_3

    .line 1509
    :cond_6
    add-int/lit8 v5, v5, -0x1

    .line 1510
    goto :goto_2

    .line 1514
    :cond_7
    move v9, v4

    const/4 v10, 0x1

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_a

    .line 1515
    add-int/lit8 v5, v5, -0x1

    .line 1517
    :goto_4
    move v9, v5

    if-ltz v9, :cond_a

    .line 1518
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/BackStackRecord;

    move-object v6, v9

    .line 1519
    move-object v9, v2

    if-eqz v9, :cond_8

    move-object v9, v2

    move-object v10, v6

    invoke-virtual {v10}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    :cond_8
    move v9, v3

    if-ltz v9, :cond_a

    move v9, v3

    move-object v10, v6

    iget v10, v10, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ne v9, v10, :cond_a

    .line 1521
    :cond_9
    add-int/lit8 v5, v5, -0x1

    .line 1522
    goto :goto_4

    .line 1528
    :cond_a
    move v9, v5

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    if-ne v9, v10, :cond_b

    .line 1529
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0

    .line 1531
    :cond_b
    new-instance v9, Ljava/util/ArrayList;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v9

    .line 1533
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v7, v9

    :goto_5
    move v9, v7

    move v10, v5

    if-le v9, v10, :cond_c

    .line 1534
    move-object v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 1533
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 1536
    :cond_c
    move-object v9, v6

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v7, v9

    .line 1537
    const/4 v9, 0x0

    move v8, v9

    :goto_6
    move v9, v8

    move v10, v7

    if-gt v9, v10, :cond_f

    .line 1538
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_d

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Popping back stack state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1539
    :cond_d
    move-object v9, v6

    move v10, v8

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/BackStackRecord;

    move v10, v8

    move v11, v7

    if-ne v10, v11, :cond_e

    const/4 v10, 0x1

    :goto_7
    invoke-virtual {v9, v10}, Landroid/support/v4/app/BackStackRecord;->popFromBackStack(Z)V

    .line 1537
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1539
    :cond_e
    const/4 v10, 0x0

    goto :goto_7

    .line 1541
    :cond_f
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    goto/16 :goto_1
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 10

    .prologue
    .line 545
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v3

    iget v4, v4, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v4, :cond_0

    .line 546
    move-object v4, v0

    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fragment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not currently in the FragmentManager"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 549
    :cond_0
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    iget v6, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 550
    return-void
.end method

.method public removeFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 12

    .prologue
    .line 1174
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nesting="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    iget v7, v7, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1175
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 1176
    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v5, :cond_1

    move v5, v4

    if-eqz v5, :cond_4

    .line 1177
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 1178
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 1180
    :cond_2
    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v5, :cond_3

    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v5, :cond_3

    .line 1181
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1183
    :cond_3
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1184
    move-object v5, v1

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1185
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    :goto_1
    move v8, v2

    move v9, v3

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1188
    :cond_4
    return-void

    .line 1175
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 1185
    :cond_6
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 4

    .prologue
    .line 538
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 539
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 541
    :cond_0
    return-void
.end method

.method reportBackStackChanged()V
    .locals 4

    .prologue
    .line 1468
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1469
    const/4 v2, 0x0

    move v1, v2

    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1470
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v2}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 1469
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1473
    :cond_0
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1733
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v8, v1

    if-nez v8, :cond_0

    .line 1840
    :goto_0
    return-void

    .line 1734
    :cond_0
    move-object v8, v1

    check-cast v8, Landroid/support/v4/app/FragmentManagerState;

    move-object v3, v8

    .line 1735
    move-object v8, v3

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    if-nez v8, :cond_1

    goto :goto_0

    .line 1739
    :cond_1
    move-object v8, v2

    if-eqz v8, :cond_4

    .line 1740
    const/4 v8, 0x0

    move v4, v8

    :goto_1
    move v8, v4

    move-object v9, v2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 1741
    move-object v8, v2

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    move-object v5, v8

    .line 1742
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreAllState: re-attaching retained "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1743
    :cond_2
    move-object v8, v3

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    move-object v9, v5

    iget v9, v9, Landroid/support/v4/app/Fragment;->mIndex:I

    aget-object v8, v8, v9

    move-object v6, v8

    .line 1744
    move-object v8, v6

    move-object v9, v5

    iput-object v9, v8, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    .line 1745
    move-object v8, v5

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1746
    move-object v8, v5

    const/4 v9, 0x0

    iput v9, v8, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 1747
    move-object v8, v5

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 1748
    move-object v8, v5

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1749
    move-object v8, v5

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 1750
    move-object v8, v6

    iget-object v8, v8, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v8, :cond_3

    .line 1751
    move-object v8, v6

    iget-object v8, v8, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1752
    move-object v8, v5

    move-object v9, v6

    iget-object v9, v9, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v10, "android:view_state"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v9

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1740
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1760
    :cond_4
    move-object v8, v0

    new-instance v9, Ljava/util/ArrayList;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v3

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v11, v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v8, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1761
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    .line 1762
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1764
    :cond_5
    const/4 v8, 0x0

    move v4, v8

    :goto_2
    move v8, v4

    move-object v9, v3

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v9, v9

    if-ge v8, v9, :cond_a

    .line 1765
    move-object v8, v3

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    move v9, v4

    aget-object v8, v8, v9

    move-object v5, v8

    .line 1766
    move-object v8, v5

    if-eqz v8, :cond_7

    .line 1767
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/app/FragmentState;->instantiate(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    move-object v6, v8

    .line 1768
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreAllState: active #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1769
    :cond_6
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 1773
    move-object v8, v5

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    .line 1764
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1775
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 1776
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v8, :cond_8

    .line 1777
    move-object v8, v0

    new-instance v9, Ljava/util/ArrayList;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1779
    :cond_8
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_9

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreAllState: avail #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1780
    :cond_9
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    move v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_3

    .line 1785
    :cond_a
    move-object v8, v2

    if-eqz v8, :cond_d

    .line 1786
    const/4 v8, 0x0

    move v4, v8

    :goto_4
    move v8, v4

    move-object v9, v2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_d

    .line 1787
    move-object v8, v2

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    move-object v5, v8

    .line 1788
    move-object v8, v5

    iget v8, v8, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    if-ltz v8, :cond_b

    .line 1789
    move-object v8, v5

    iget v8, v8, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_c

    .line 1790
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move-object v10, v5

    iget v10, v10, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/Fragment;

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 1786
    :cond_b
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1792
    :cond_c
    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Re-attaching retained fragment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " target no longer exists: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    iget v10, v10, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1794
    move-object v8, v5

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    goto :goto_5

    .line 1801
    :cond_d
    move-object v8, v3

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    if-eqz v8, :cond_14

    .line 1802
    move-object v8, v0

    new-instance v9, Ljava/util/ArrayList;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v3

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    array-length v11, v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v8, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1803
    const/4 v8, 0x0

    move v4, v8

    :goto_6
    move v8, v4

    move-object v9, v3

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    array-length v9, v9

    if-ge v8, v9, :cond_11

    .line 1804
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move-object v9, v3

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    move v10, v4

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    move-object v5, v8

    .line 1805
    move-object v8, v5

    if-nez v8, :cond_e

    .line 1806
    move-object v8, v0

    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No instantiated fragment for index #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v3

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    move v13, v4

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1809
    :cond_e
    move-object v8, v5

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1810
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_f

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreAllState: added #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1811
    :cond_f
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1812
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string v10, "Already added!"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1814
    :cond_10
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 1803
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 1821
    :cond_11
    :goto_7
    move-object v8, v3

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    if-eqz v8, :cond_16

    .line 1822
    move-object v8, v0

    new-instance v9, Ljava/util/ArrayList;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v3

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    array-length v11, v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v8, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1823
    const/4 v8, 0x0

    move v4, v8

    :goto_8
    move v8, v4

    move-object v9, v3

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    array-length v9, v9

    if-ge v8, v9, :cond_15

    .line 1824
    move-object v8, v3

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    move v9, v4

    aget-object v8, v8, v9

    move-object v9, v0

    invoke-virtual {v8, v9}, Landroid/support/v4/app/BackStackState;->instantiate(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;

    move-result-object v8

    move-object v5, v8

    .line 1825
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_12

    .line 1826
    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreAllState: back stack #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    iget v10, v10, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1828
    new-instance v8, Landroid/support/v4/util/LogWriter;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string v10, "FragmentManager"

    invoke-direct {v9, v10}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    .line 1829
    new-instance v8, Ljava/io/PrintWriter;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v6

    invoke-direct {v9, v10}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v7, v8

    .line 1830
    move-object v8, v5

    const-string v9, "  "

    move-object v10, v7

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 1832
    :cond_12
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 1833
    move-object v8, v5

    iget v8, v8, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v8, :cond_13

    .line 1834
    move-object v8, v0

    move-object v9, v5

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    move-object v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V

    .line 1823
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1817
    :cond_14
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    goto/16 :goto_7

    .line 1840
    :cond_15
    :goto_9
    goto/16 :goto_0

    .line 1838
    :cond_16
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    goto :goto_9
.end method

.method retainNonConfig()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1547
    move-object v0, p0

    const/4 v4, 0x0

    move-object v1, v4

    .line 1548
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 1549
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 1550
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    move-object v3, v4

    .line 1551
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    if-eqz v4, :cond_1

    .line 1552
    move-object v4, v1

    if-nez v4, :cond_0

    .line 1553
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 1555
    :cond_0
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1556
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 1557
    move-object v4, v3

    move-object v5, v3

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_2

    move-object v5, v3

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v5, v5, Landroid/support/v4/app/Fragment;->mIndex:I

    :goto_1
    iput v5, v4, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    .line 1558
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retainNonConfig: keeping retained "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1549
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1557
    :cond_2
    const/4 v5, -0x1

    goto :goto_1

    .line 1562
    :cond_3
    move-object v4, v1

    move-object v0, v4

    return-object v0
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 15

    .prologue
    .line 1617
    move-object v0, p0

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v7

    .line 1619
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z

    if-eqz v7, :cond_0

    .line 1629
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1632
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_2

    .line 1633
    :cond_1
    const/4 v7, 0x0

    move-object v0, v7

    .line 1727
    :goto_0
    return-object v0

    .line 1637
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v1, v7

    .line 1638
    move v7, v1

    new-array v7, v7, [Landroid/support/v4/app/FragmentState;

    move-object v2, v7

    .line 1639
    const/4 v7, 0x0

    move v3, v7

    .line 1640
    const/4 v7, 0x0

    move v4, v7

    :goto_1
    move v7, v4

    move v8, v1

    if-ge v7, v8, :cond_9

    .line 1641
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/Fragment;

    move-object v5, v7

    .line 1642
    move-object v7, v5

    if-eqz v7, :cond_7

    .line 1643
    move-object v7, v5

    iget v7, v7, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v7, :cond_3

    .line 1644
    move-object v7, v0

    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has cleared index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    iget v11, v11, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1649
    :cond_3
    const/4 v7, 0x1

    move v3, v7

    .line 1651
    new-instance v7, Landroid/support/v4/app/FragmentState;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v5

    invoke-direct {v8, v9}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    move-object v6, v7

    .line 1652
    move-object v7, v2

    move v8, v4

    move-object v9, v6

    aput-object v9, v7, v8

    .line 1654
    move-object v7, v5

    iget v7, v7, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v7, :cond_8

    move-object v7, v6

    iget-object v7, v7, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v7, :cond_8

    .line 1655
    move-object v7, v6

    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, v7, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1657
    move-object v7, v5

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v7, :cond_6

    .line 1658
    move-object v7, v5

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v7, v7, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v7, :cond_4

    .line 1659
    move-object v7, v0

    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure saving state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has target not in fragment manager: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    iget-object v11, v11, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1663
    :cond_4
    move-object v7, v6

    iget-object v7, v7, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v7, :cond_5

    .line 1664
    move-object v7, v6

    new-instance v8, Landroid/os/Bundle;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v7, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1666
    :cond_5
    move-object v7, v0

    move-object v8, v6

    iget-object v8, v8, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    move-object v10, v5

    iget-object v10, v10, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v4/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 1668
    move-object v7, v5

    iget v7, v7, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    if-eqz v7, :cond_6

    .line 1669
    move-object v7, v6

    iget-object v7, v7, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v8, "android:target_req_state"

    move-object v9, v5

    iget v9, v9, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1679
    :cond_6
    :goto_2
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_7

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saved state of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v6

    iget-object v9, v9, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1640
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1676
    :cond_8
    move-object v7, v6

    move-object v8, v5

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v8, v7, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_2

    .line 1684
    :cond_9
    move v7, v3

    if-nez v7, :cond_b

    .line 1685
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_a

    const-string v7, "FragmentManager"

    const-string v8, "saveAllState: no fragments!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1686
    :cond_a
    const/4 v7, 0x0

    move-object v0, v7

    goto/16 :goto_0

    .line 1689
    :cond_b
    const/4 v7, 0x0

    move-object v4, v7

    .line 1690
    const/4 v7, 0x0

    move-object v5, v7

    .line 1693
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v7, :cond_e

    .line 1694
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v1, v7

    .line 1695
    move v7, v1

    if-lez v7, :cond_e

    .line 1696
    move v7, v1

    new-array v7, v7, [I

    move-object v4, v7

    .line 1697
    const/4 v7, 0x0

    move v6, v7

    :goto_3
    move v7, v6

    move v8, v1

    if-ge v7, v8, :cond_e

    .line 1698
    move-object v7, v4

    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/Fragment;

    iget v9, v9, Landroid/support/v4/app/Fragment;->mIndex:I

    aput v9, v7, v8

    .line 1699
    move-object v7, v4

    move v8, v6

    aget v7, v7, v8

    if-gez v7, :cond_c

    .line 1700
    move-object v7, v0

    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has cleared index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    move v12, v6

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1704
    :cond_c
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_d

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveAllState: adding fragment #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1697
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 1711
    :cond_e
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v7, :cond_10

    .line 1712
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v1, v7

    .line 1713
    move v7, v1

    if-lez v7, :cond_10

    .line 1714
    move v7, v1

    new-array v7, v7, [Landroid/support/v4/app/BackStackState;

    move-object v5, v7

    .line 1715
    const/4 v7, 0x0

    move v6, v7

    :goto_4
    move v7, v6

    move v8, v1

    if-ge v7, v8, :cond_10

    .line 1716
    move-object v7, v5

    move v8, v6

    new-instance v9, Landroid/support/v4/app/BackStackState;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v13, v6

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v10, v11, v12}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/BackStackRecord;)V

    aput-object v9, v7, v8

    .line 1717
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_f

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveAllState: adding back stack #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1715
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1723
    :cond_10
    new-instance v7, Landroid/support/v4/app/FragmentManagerState;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    move-object v6, v7

    .line 1724
    move-object v7, v6

    move-object v8, v2

    iput-object v8, v7, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    .line 1725
    move-object v7, v6

    move-object v8, v4

    iput-object v8, v7, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    .line 1726
    move-object v7, v6

    move-object v8, v5

    iput-object v8, v7, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    .line 1727
    move-object v7, v6

    move-object v0, v7

    goto/16 :goto_0
.end method

.method saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 1582
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move-object v2, v3

    .line 1584
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 1585
    move-object v3, v0

    new-instance v4, Landroid/os/Bundle;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v3, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1587
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 1588
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1589
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    move-object v2, v3

    .line 1590
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1593
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1594
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V

    .line 1596
    :cond_2
    move-object v3, v1

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v3, :cond_4

    .line 1597
    move-object v3, v2

    if-nez v3, :cond_3

    .line 1598
    new-instance v3, Landroid/os/Bundle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 1600
    :cond_3
    move-object v3, v2

    const-string v4, "android:view_state"

    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1603
    :cond_4
    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v3, :cond_6

    .line 1604
    move-object v3, v2

    if-nez v3, :cond_5

    .line 1605
    new-instance v3, Landroid/os/Bundle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 1608
    :cond_5
    move-object v3, v2

    const-string v4, "android:user_visible_hint"

    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1611
    :cond_6
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
    .locals 9

    .prologue
    .line 572
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v3, :cond_0

    .line 573
    move-object v3, v0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not currently in the FragmentManager"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 576
    :cond_0
    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v3, :cond_2

    .line 577
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v3

    move-object v2, v3

    .line 578
    move-object v3, v2

    if-eqz v3, :cond_1

    new-instance v3, Landroid/support/v4/app/Fragment$SavedState;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    :goto_0
    move-object v0, v3

    .line 580
    :goto_1
    return-object v0

    .line 578
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 580
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method saveFragmentViewState(Landroid/support/v4/app/Fragment;)V
    .locals 6

    .prologue
    .line 1566
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1579
    :goto_0
    return-void

    .line 1569
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v2, :cond_2

    .line 1570
    move-object v2, v0

    new-instance v3, Landroid/util/SparseArray;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v2, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 1574
    :goto_1
    move-object v2, v1

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1575
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1576
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1577
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 1579
    :cond_1
    goto :goto_0

    .line 1572
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method public setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V
    .locals 10

    .prologue
    .line 1376
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, v0

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v3, v7

    monitor-enter v6

    .line 1377
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 1378
    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1380
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .line 1381
    move v6, v1

    move v7, v4

    if-ge v6, v7, :cond_2

    .line 1382
    sget-boolean v6, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting back stack index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1383
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1397
    :goto_0
    move-object v6, v3

    monitor-exit v6

    .line 1398
    return-void

    .line 1385
    :cond_2
    :goto_1
    move v6, v4

    move v7, v1

    if-ge v6, v7, :cond_5

    .line 1386
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1387
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v6, :cond_3

    .line 1388
    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1390
    :cond_3
    sget-boolean v6, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding available back stack index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1391
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    move v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1392
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1394
    :cond_5
    sget-boolean v6, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding back stack index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1395
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    goto/16 :goto_0

    .line 1397
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 11

    .prologue
    .line 1210
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "show: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1211
    :cond_0
    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v5, :cond_4

    .line 1212
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1213
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 1214
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x1

    move v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v5

    move-object v4, v5

    .line 1216
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 1217
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1219
    :cond_1
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1221
    :cond_2
    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v5, :cond_3

    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v5, :cond_3

    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v5, :cond_3

    .line 1222
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1224
    :cond_3
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1226
    :cond_4
    return-void
.end method

.method startPendingDeferredFragments()V
    .locals 5

    .prologue
    .line 1107
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1115
    :goto_0
    return-void

    .line 1109
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    :goto_1
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1110
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    move-object v2, v3

    .line 1111
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 1112
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V

    .line 1109
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1115
    :cond_2
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 585
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 586
    move-object v2, v1

    const-string v3, "FragmentManager{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 587
    move-object v2, v1

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 588
    move-object v2, v1

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 589
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 590
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 594
    :goto_0
    move-object v2, v1

    const-string v3, "}}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 595
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0

    .line 592
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method
