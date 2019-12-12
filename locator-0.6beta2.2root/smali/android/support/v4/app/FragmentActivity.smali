.class public Landroid/support/v4/app/FragmentActivity;
.super Landroid/app/Activity;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentActivity$FragmentTag;,
        Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    }
.end annotation


# static fields
.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field private static final HONEYCOMB:I = 0xb

.field static final MSG_REALLY_STOPPED:I = 0x1

.field static final MSG_RESUME_PENDING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mAllLoaderManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedForLoaderManager:Z

.field final mContainer:Landroid/support/v4/app/FragmentContainer;

.field mCreated:Z

.field final mFragments:Landroid/support/v4/app/FragmentManagerImpl;

.field final mHandler:Landroid/os/Handler;

.field mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

.field mLoadersStarted:Z

.field mOptionsMenuInvalidated:Z

.field mReallyStopped:Z

.field mResumed:Z

.field mRetaining:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/app/Activity;-><init>()V

    .line 81
    move-object v1, v0

    new-instance v2, Landroid/support/v4/app/FragmentActivity$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/app/FragmentActivity$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v2, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    .line 100
    move-object v1, v0

    new-instance v2, Landroid/support/v4/app/FragmentManagerImpl;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v2, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    .line 101
    move-object v1, v0

    new-instance v2, Landroid/support/v4/app/FragmentActivity$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/app/FragmentActivity$2;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v2, v1, Landroid/support/v4/app/FragmentActivity;->mContainer:Landroid/support/v4/app/FragmentContainer;

    .line 129
    return-void
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 13

    .prologue
    .line 739
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 740
    move-object v7, v3

    if-nez v7, :cond_0

    .line 741
    move-object v7, v2

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    :goto_0
    return-void

    .line 744
    :cond_0
    move-object v7, v2

    move-object v8, v3

    invoke-static {v8}, Landroid/support/v4/app/FragmentActivity;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 745
    move-object v7, v3

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-nez v7, :cond_1

    .line 746
    goto :goto_0

    .line 748
    :cond_1
    move-object v7, v3

    check-cast v7, Landroid/view/ViewGroup;

    move-object v4, v7

    .line 749
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v5, v7

    .line 750
    move v7, v5

    if-gtz v7, :cond_2

    .line 751
    goto :goto_0

    .line 753
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 754
    const/4 v7, 0x0

    move v6, v7

    :goto_1
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_3

    .line 755
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move v11, v6

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 754
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 757
    :cond_3
    goto :goto_0
.end method

.method private static viewToString(Landroid/view/View;)Ljava/lang/String;
    .locals 11

    .prologue
    .line 673
    move-object v0, p0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const/16 v9, 0x80

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v7

    .line 674
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 675
    move-object v7, v1

    const/16 v8, 0x7b

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 676
    move-object v7, v1

    move-object v8, v0

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 677
    move-object v7, v1

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 678
    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 682
    move-object v7, v1

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 684
    :goto_0
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isFocusable()Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x46

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 685
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x45

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 686
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->willNotDraw()Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x2e

    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 687
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x48

    :goto_4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 688
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x56

    :goto_5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 689
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isClickable()Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x43

    :goto_6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 690
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isLongClickable()Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x4c

    :goto_7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 691
    move-object v7, v1

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 692
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x46

    :goto_8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 693
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v8, 0x53

    :goto_9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 694
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isPressed()Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x50

    :goto_a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 695
    move-object v7, v1

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 696
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 697
    move-object v7, v1

    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 698
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 699
    move-object v7, v1

    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 700
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 701
    move-object v7, v1

    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 702
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 703
    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    move v2, v7

    .line 704
    move v7, v2

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 705
    move-object v7, v1

    const-string v8, " #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 706
    move-object v7, v1

    move v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 707
    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v3, v7

    .line 708
    move v7, v2

    if-eqz v7, :cond_0

    move-object v7, v3

    if-eqz v7, :cond_0

    .line 711
    move v7, v2

    const/high16 v8, -0x1000000

    and-int/2addr v7, v8

    sparse-switch v7, :sswitch_data_1

    .line 719
    move-object v7, v3

    move v8, v2

    :try_start_0
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 722
    :goto_b
    move-object v7, v3

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 723
    move-object v7, v3

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 724
    move-object v7, v1

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 725
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 726
    move-object v7, v1

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 727
    move-object v7, v1

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 728
    move-object v7, v1

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 729
    move-object v7, v1

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 734
    :cond_0
    :goto_c
    move-object v7, v1

    const-string v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 735
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    return-object v0

    .line 679
    :sswitch_0
    move-object v7, v1

    const/16 v8, 0x56

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    goto/16 :goto_0

    .line 680
    :sswitch_1
    move-object v7, v1

    const/16 v8, 0x49

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    goto/16 :goto_0

    .line 681
    :sswitch_2
    move-object v7, v1

    const/16 v8, 0x47

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    goto/16 :goto_0

    .line 684
    :cond_1
    const/16 v8, 0x2e

    goto/16 :goto_1

    .line 685
    :cond_2
    const/16 v8, 0x2e

    goto/16 :goto_2

    .line 686
    :cond_3
    const/16 v8, 0x44

    goto/16 :goto_3

    .line 687
    :cond_4
    const/16 v8, 0x2e

    goto/16 :goto_4

    .line 688
    :cond_5
    const/16 v8, 0x2e

    goto/16 :goto_5

    .line 689
    :cond_6
    const/16 v8, 0x2e

    goto/16 :goto_6

    .line 690
    :cond_7
    const/16 v8, 0x2e

    goto/16 :goto_7

    .line 692
    :cond_8
    const/16 v8, 0x2e

    goto/16 :goto_8

    .line 693
    :cond_9
    const/16 v8, 0x2e

    goto/16 :goto_9

    .line 694
    :cond_a
    const/16 v8, 0x2e

    goto/16 :goto_a

    .line 713
    :sswitch_3
    :try_start_1
    const-string v7, "app"

    move-object v4, v7

    .line 714
    goto/16 :goto_b

    .line 716
    :sswitch_4
    const-string v7, "android"
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v7

    .line 717
    goto/16 :goto_b

    .line 730
    :catch_0
    move-exception v7

    move-object v4, v7

    goto :goto_c

    .line 678
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch

    .line 711
    :sswitch_data_1
    .sparse-switch
        0x1000000 -> :sswitch_4
        0x7f000000 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method doReallyStop(Z)V
    .locals 4

    .prologue
    .line 760
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    if-nez v2, :cond_0

    .line 761
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 762
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    .line 763
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 764
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->onReallyStop()V

    .line 766
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 646
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_0

    .line 650
    :cond_0
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v6, v3

    const-string v7, "Local FragmentActivity "

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 651
    move-object v6, v3

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 652
    move-object v6, v3

    const-string v7, " State:"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 654
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v6, v3

    const-string v7, "mCreated="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 655
    move-object v6, v3

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Z)V

    move-object v6, v3

    const-string v7, "mResumed="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 656
    move-object v6, v3

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Z)V

    move-object v6, v3

    const-string v7, " mStopped="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 657
    move-object v6, v3

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Z)V

    move-object v6, v3

    const-string v7, " mReallyStopped="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 658
    move-object v6, v3

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 659
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v6, v3

    const-string v7, "mLoadersStarted="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    move-object v6, v3

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 661
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v6, :cond_1

    .line 662
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v6, v3

    const-string v7, "Loader Manager "

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 663
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 664
    move-object v6, v3

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 667
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 668
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v6, v3

    const-string v7, "View Hierarchy:"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 670
    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 612
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    move-object v1, v2

    .line 614
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
    .locals 11

    .prologue
    .line 863
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;

    if-nez v5, :cond_0

    .line 864
    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;

    .line 866
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/LoaderManagerImpl;

    move-object v4, v5

    .line 867
    move-object v5, v4

    if-nez v5, :cond_2

    .line 868
    move v5, v3

    if-eqz v5, :cond_1

    .line 869
    new-instance v5, Landroid/support/v4/app/LoaderManagerImpl;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v0

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v4/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Z)V

    move-object v4, v5

    .line 870
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 875
    :cond_1
    :goto_0
    move-object v5, v4

    move-object v0, v5

    return-object v0

    .line 873
    :cond_2
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/support/v4/app/LoaderManagerImpl;->updateActivity(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 2

    .prologue
    .line 805
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v0, v1

    return-object v0
.end method

.method public getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
    .locals 6

    .prologue
    .line 854
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_0

    .line 855
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    move-object v0, v1

    .line 859
    :goto_0
    return-object v0

    .line 857
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentActivity;->mCheckedForLoaderManager:Z

    .line 858
    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 859
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    move-object v0, v1

    goto :goto_0
.end method

.method invalidateSupportFragment(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 837
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 838
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/LoaderManagerImpl;

    move-object v2, v3

    .line 839
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    iget-boolean v3, v3, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v3, :cond_0

    .line 840
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 841
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 844
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    .prologue
    .line 147
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 148
    move v6, v1

    const/16 v7, 0x10

    shr-int/lit8 v6, v6, 0x10

    move v4, v6

    .line 149
    move v6, v4

    if-eqz v6, :cond_3

    .line 150
    add-int/lit8 v4, v4, -0x1

    .line 151
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    move v6, v4

    if-ltz v6, :cond_0

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 152
    :cond_0
    const-string v6, "FragmentActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity result fragment index out of range: 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 167
    :goto_0
    return-void

    .line 156
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    move-object v5, v6

    .line 157
    move-object v6, v5

    if-nez v6, :cond_2

    .line 158
    const-string v6, "FragmentActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity result no fragment exists for index: 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 163
    :goto_1
    goto :goto_0

    .line 161
    :cond_2
    move-object v6, v5

    move v7, v1

    const v8, 0xffff

    and-int/2addr v7, v8

    move v8, v2

    move-object v9, v3

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 166
    :cond_3
    move-object v6, v0

    move v7, v1

    move v8, v2

    move-object v9, v3

    invoke-super {v6, v7, v8, v9}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 167
    goto :goto_0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 798
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackImmediate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 177
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 184
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 185
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 186
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentActivity;->mContainer:Landroid/support/v4/app/FragmentContainer;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->attachActivity(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V

    .line 195
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v4

    if-nez v4, :cond_0

    .line 196
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 199
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 201
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    move-object v2, v4

    .line 203
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 204
    move-object v4, v0

    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Ljava/util/HashMap;

    iput-object v5, v4, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;

    .line 206
    :cond_1
    move-object v4, v1

    if-eqz v4, :cond_2

    .line 207
    move-object v4, v1

    const-string v5, "android:support:fragments"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v3, v4

    .line 208
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v5, v3

    move-object v6, v2

    if-eqz v6, :cond_3

    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 210
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    .line 211
    return-void

    .line 208
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 8

    .prologue
    .line 218
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    if-nez v4, :cond_1

    .line 219
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    move v3, v4

    .line 220
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    or-int/2addr v4, v5

    move v3, v4

    .line 221
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 222
    move v4, v3

    move v0, v4

    .line 229
    :goto_0
    return v0

    .line 227
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 229
    :cond_1
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 16

    .prologue
    .line 237
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v11, "fragment"

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 238
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    invoke-super {v11, v12, v13, v14}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v11

    move-object v0, v11

    .line 312
    :goto_0
    return-object v0

    .line 241
    :cond_0
    move-object v11, v3

    const/4 v12, 0x0

    const-string v13, "class"

    invoke-interface {v11, v12, v13}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 242
    move-object v11, v2

    move-object v12, v3

    sget-object v13, Landroid/support/v4/app/FragmentActivity$FragmentTag;->Fragment:[I

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    move-object v5, v11

    .line 243
    move-object v11, v4

    if-nez v11, :cond_1

    .line 244
    move-object v11, v5

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 246
    :cond_1
    move-object v11, v5

    const/4 v12, 0x1

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    move v6, v11

    .line 247
    move-object v11, v5

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 248
    move-object v11, v5

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 250
    const/4 v11, 0x0

    move-object v8, v11

    .line 251
    move-object v11, v8

    if-eqz v11, :cond_2

    move-object v11, v8

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v11

    :goto_1
    move v9, v11

    .line 252
    move v11, v9

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    move v11, v6

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    move-object v11, v7

    if-nez v11, :cond_3

    .line 253
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v3

    invoke-interface {v14}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 251
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 260
    :cond_3
    move v11, v6

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    move v12, v6

    invoke-virtual {v11, v12}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v11

    :goto_2
    move-object v10, v11

    .line 261
    move-object v11, v10

    if-nez v11, :cond_4

    move-object v11, v7

    if-eqz v11, :cond_4

    .line 262
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v12, v7

    invoke-virtual {v11, v12}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v11

    move-object v10, v11

    .line 264
    :cond_4
    move-object v11, v10

    if-nez v11, :cond_5

    move v11, v9

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    .line 265
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    move v12, v9

    invoke-virtual {v11, v12}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v11

    move-object v10, v11

    .line 268
    :cond_5
    sget-boolean v11, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_6

    const-string v11, "FragmentActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onCreateView: id=0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v6

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " fname="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " existing="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 271
    :cond_6
    move-object v11, v10

    if-nez v11, :cond_9

    .line 272
    move-object v11, v0

    move-object v12, v4

    invoke-static {v11, v12}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v11

    move-object v10, v11

    .line 273
    move-object v11, v10

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 274
    move-object v11, v10

    move v12, v6

    if-eqz v12, :cond_8

    move v12, v6

    :goto_3
    iput v12, v11, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 275
    move-object v11, v10

    move v12, v9

    iput v12, v11, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 276
    move-object v11, v10

    move-object v12, v7

    iput-object v12, v11, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 277
    move-object v11, v10

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 278
    move-object v11, v10

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v12, v11, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 279
    move-object v11, v10

    move-object v12, v0

    move-object v13, v3

    move-object v14, v10

    iget-object v14, v14, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v11, v12, v13, v14}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 280
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v12, v10

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 302
    :goto_4
    move-object v11, v10

    iget-object v11, v11, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v11, :cond_c

    .line 303
    new-instance v11, Ljava/lang/IllegalStateException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Fragment "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " did not create a view."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 260
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 274
    :cond_8
    move v12, v9

    goto :goto_3

    .line 282
    :cond_9
    move-object v11, v10

    iget-boolean v11, v11, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-eqz v11, :cond_a

    .line 285
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v3

    invoke-interface {v14}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": Duplicate id 0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v6

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", tag "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", or parent id 0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v9

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " with another fragment for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 292
    :cond_a
    move-object v11, v10

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 296
    move-object v11, v10

    iget-boolean v11, v11, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v11, :cond_b

    .line 297
    move-object v11, v10

    move-object v12, v0

    move-object v13, v3

    move-object v14, v10

    iget-object v14, v14, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v11, v12, v13, v14}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 299
    :cond_b
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v12, v10

    invoke-virtual {v11, v12}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_4

    .line 306
    :cond_c
    move v11, v6

    if-eqz v11, :cond_d

    .line 307
    move-object v11, v10

    iget-object v11, v11, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move v12, v6

    invoke-virtual {v11, v12}, Landroid/view/View;->setId(I)V

    .line 309
    :cond_d
    move-object v11, v10

    iget-object v11, v11, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_e

    .line 310
    move-object v11, v10

    iget-object v11, v11, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object v12, v7

    invoke-virtual {v11, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 312
    :cond_e
    move-object v11, v10

    iget-object v11, v11, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object v0, v11

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 320
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/app/Activity;->onDestroy()V

    .line 322
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    .line 324
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 325
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_0

    .line 326
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 328
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 335
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    move v3, v1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 340
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 341
    const/4 v3, 0x1

    move v0, v3

    .line 344
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/app/Activity;->onLowMemory()V

    .line 353
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchLowMemory()V

    .line 354
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 361
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 362
    const/4 v3, 0x1

    move v0, v3

    .line 373
    :goto_0
    return v0

    .line 365
    :cond_0
    move v3, v1

    sparse-switch v3, :sswitch_data_0

    .line 373
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 367
    :sswitch_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 370
    :sswitch_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 365
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 416
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 417
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 418
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 6

    .prologue
    .line 382
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 387
    :goto_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 388
    return-void

    .line 384
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 395
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/app/Activity;->onPause()V

    .line 396
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    .line 397
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 399
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 401
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPause()V

    .line 402
    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    .line 442
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/app/Activity;->onPostResume()V

    .line 443
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 445
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v1

    .line 446
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 9

    .prologue
    .line 463
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v1

    if-nez v5, :cond_2

    move-object v5, v3

    if-eqz v5, :cond_2

    .line 464
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    if-eqz v5, :cond_0

    .line 465
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    .line 466
    move-object v5, v3

    invoke-interface {v5}, Landroid/view/Menu;->clear()V

    .line 467
    move-object v5, v0

    move v6, v1

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v5

    .line 469
    :cond_0
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v5

    move v4, v5

    .line 470
    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v6

    or-int/2addr v5, v6

    move v4, v5

    .line 471
    move v5, v4

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .line 473
    :goto_1
    return v0

    .line 471
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 473
    :cond_2
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v5

    move v0, v5

    goto :goto_1
.end method

.method onReallyStop()V
    .locals 3

    .prologue
    .line 776
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    if-eqz v1, :cond_0

    .line 777
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    .line 778
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_0

    .line 779
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    if-nez v1, :cond_1

    .line 780
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doStop()V

    .line 787
    :cond_0
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchReallyStop()V

    .line 788
    return-void

    .line 782
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 431
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/app/Activity;->onResume()V

    .line 432
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v1

    .line 433
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    .line 434
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v1

    .line 435
    return-void
.end method

.method protected onResumeFragments()V
    .locals 2

    .prologue
    .line 455
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    .line 456
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 604
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 10

    .prologue
    .line 483
    move-object v0, p0

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    if-eqz v7, :cond_0

    .line 484
    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    .line 487
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    .line 489
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManagerImpl;->retainNonConfig()Ljava/util/ArrayList;

    move-result-object v7

    move-object v2, v7

    .line 490
    const/4 v7, 0x0

    move v3, v7

    .line 491
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;

    if-eqz v7, :cond_2

    .line 494
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v7, v7, [Landroid/support/v4/app/LoaderManagerImpl;

    move-object v4, v7

    .line 495
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .line 496
    move-object v7, v4

    if-eqz v7, :cond_2

    .line 497
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move-object v8, v4

    array-length v8, v8

    if-ge v7, v8, :cond_2

    .line 498
    move-object v7, v4

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 499
    move-object v7, v6

    iget-boolean v7, v7, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v7, :cond_1

    .line 500
    const/4 v7, 0x1

    move v3, v7

    .line 497
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 502
    :cond_1
    move-object v7, v6

    invoke-virtual {v7}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 503
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;

    move-object v8, v6

    iget-object v8, v8, Landroid/support/v4/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 508
    :cond_2
    move-object v7, v2

    if-nez v7, :cond_3

    move v7, v3

    if-nez v7, :cond_3

    move-object v7, v1

    if-nez v7, :cond_3

    .line 509
    const/4 v7, 0x0

    move-object v0, v7

    .line 518
    :goto_2
    return-object v0

    .line 512
    :cond_3
    new-instance v7, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;-><init>()V

    move-object v4, v7

    .line 513
    move-object v7, v4

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    .line 514
    move-object v7, v4

    move-object v8, v1

    iput-object v8, v7, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    .line 515
    move-object v7, v4

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    .line 516
    move-object v7, v4

    move-object v8, v2

    iput-object v8, v7, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Ljava/util/ArrayList;

    .line 517
    move-object v7, v4

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;

    iput-object v8, v7, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Ljava/util/HashMap;

    .line 518
    move-object v7, v4

    move-object v0, v7

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 526
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 527
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v2, v3

    .line 528
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 529
    move-object v3, v1

    const-string v4, "android:support:fragments"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 531
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 9

    .prologue
    .line 539
    move-object v0, p0

    move-object v4, v0

    invoke-super {v4}, Landroid/app/Activity;->onStart()V

    .line 541
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    .line 542
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 543
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 545
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    if-nez v4, :cond_0

    .line 546
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    .line 547
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    .line 550
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 551
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v4

    .line 553
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    if-nez v4, :cond_2

    .line 554
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    .line 555
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v4, :cond_3

    .line 556
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v4}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    .line 564
    :cond_1
    :goto_0
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/app/FragmentActivity;->mCheckedForLoaderManager:Z

    .line 568
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    .line 569
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;

    if-eqz v4, :cond_4

    .line 570
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v4, v4, [Landroid/support/v4/app/LoaderManagerImpl;

    move-object v1, v4

    .line 571
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .line 572
    move-object v4, v1

    if-eqz v4, :cond_4

    .line 573
    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 574
    move-object v4, v1

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 575
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v4/app/LoaderManagerImpl;->finishRetain()V

    .line 576
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v4/app/LoaderManagerImpl;->doReportStart()V

    .line 573
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 557
    :cond_3
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/FragmentActivity;->mCheckedForLoaderManager:Z

    if-nez v4, :cond_1

    .line 558
    move-object v4, v0

    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 560
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    iget-boolean v4, v4, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v4, :cond_1

    .line 561
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v4}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    goto :goto_0

    .line 580
    :cond_4
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 587
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/app/Activity;->onStop()V

    .line 589
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    .line 590
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v1

    .line 592
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStop()V

    .line 593
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 7

    .prologue
    .line 814
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move v3, v2

    const/high16 v4, -0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 815
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Can only use lower 16 bits for requestCode"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 817
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 818
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 10

    .prologue
    .line 825
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 826
    move-object v4, v0

    move-object v5, v2

    const/4 v6, -0x1

    invoke-super {v4, v5, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 833
    :goto_0
    return-void

    .line 829
    :cond_0
    move v4, v3

    const/high16 v5, -0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 830
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Can only use lower 16 bits for requestCode"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 832
    :cond_1
    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x10

    shl-int/lit8 v6, v6, 0x10

    move v7, v3

    const v8, 0xffff

    and-int/2addr v7, v8

    add-int/2addr v6, v7

    invoke-super {v4, v5, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 833
    goto :goto_0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 3

    .prologue
    .line 623
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 626
    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompatHoneycomb;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 633
    :goto_0
    return-void

    .line 632
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    .line 633
    goto :goto_0
.end method
