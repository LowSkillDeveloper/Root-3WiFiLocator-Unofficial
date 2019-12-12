.class public Landroid/support/v4/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentTabHost$1;,
        Landroid/support/v4/app/FragmentTabHost$SavedState;,
        Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;,
        Landroid/support/v4/app/FragmentTabHost$TabInfo;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mRealTabContent:Landroid/widget/FrameLayout;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/FragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 131
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v4/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 136
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    return-void
.end method

.method private doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;
    .locals 11

    .prologue
    .line 318
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v6, 0x0

    move-object v3, v6

    .line 319
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 320
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/FragmentTabHost$TabInfo;

    move-object v5, v6

    .line 321
    move-object v6, v5

    invoke-static {v6}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->access$200(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 322
    move-object v6, v5

    move-object v3, v6

    .line 319
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 325
    :cond_1
    move-object v6, v3

    if-nez v6, :cond_2

    .line 326
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No tab known for tag "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 328
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    move-object v7, v3

    if-eq v6, v7, :cond_6

    .line 329
    move-object v6, v2

    if-nez v6, :cond_3

    .line 330
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    move-object v2, v6

    .line 332
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    if-eqz v6, :cond_4

    .line 333
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    invoke-static {v6}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 334
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    invoke-static {v7}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    .line 337
    :cond_4
    move-object v6, v3

    if-eqz v6, :cond_5

    .line 338
    move-object v6, v3

    invoke-static {v6}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    if-nez v6, :cond_7

    .line 339
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentTabHost;->mContext:Landroid/content/Context;

    move-object v8, v3

    invoke-static {v8}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->access$300(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v9, v3

    invoke-static {v9}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->access$400(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->access$102(Landroid/support/v4/app/FragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    .line 341
    move-object v6, v2

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    move-object v8, v3

    invoke-static {v8}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    move-object v9, v3

    invoke-static {v9}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->access$200(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    .line 347
    :cond_5
    :goto_1
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    .line 349
    :cond_6
    move-object v6, v2

    move-object v0, v6

    return-object v0

    .line 343
    :cond_7
    move-object v6, v2

    move-object v7, v3

    invoke-static {v7}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    goto :goto_1
.end method

.method private ensureContent()V
    .locals 6

    .prologue
    .line 208
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    .line 209
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, v1, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 210
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    .line 211
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No tab content FrameLayout found for id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_0
    return-void
.end method

.method private initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 15

    .prologue
    .line 140
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x1

    new-array v9, v9, [I

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    const v12, 0x10100f3

    aput v12, v10, v11

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v3, v7

    .line 142
    move-object v7, v0

    move-object v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v7, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    .line 143
    move-object v7, v3

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    move-object v7, v0

    move-object v8, v0

    invoke-super {v7, v8}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 149
    move-object v7, v0

    const v8, 0x1020013

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_0

    .line 150
    new-instance v7, Landroid/widget/LinearLayout;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v4, v7

    .line 151
    move-object v7, v4

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 152
    move-object v7, v0

    move-object v8, v4

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/app/FragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    new-instance v7, Landroid/widget/TabWidget;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    invoke-direct {v8, v9}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    move-object v5, v7

    .line 157
    move-object v7, v5

    const v8, 0x1020013

    invoke-virtual {v7, v8}, Landroid/widget/TabWidget;->setId(I)V

    .line 158
    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TabWidget;->setOrientation(I)V

    .line 159
    move-object v7, v4

    move-object v8, v5

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    new-instance v7, Landroid/widget/FrameLayout;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    invoke-direct {v8, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v6, v7

    .line 164
    move-object v7, v6

    const v8, 0x1020011

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setId(I)V

    .line 165
    move-object v7, v4

    move-object v8, v6

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    move-object v7, v0

    new-instance v8, Landroid/widget/FrameLayout;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    invoke-direct {v9, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v6, v9

    iput-object v8, v7, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 168
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setId(I)V

    .line 169
    move-object v7, v4

    move-object v8, v6

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v7, v1

    new-instance v8, Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/FragmentTabHost;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    .line 224
    move-object v7, v1

    invoke-virtual {v7}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 226
    new-instance v7, Landroid/support/v4/app/FragmentTabHost$TabInfo;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    move-object v10, v2

    move-object v11, v3

    invoke-direct {v8, v9, v10, v11}, Landroid/support/v4/app/FragmentTabHost$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    move-object v5, v7

    .line 228
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/app/FragmentTabHost;->mAttached:Z

    if-eqz v7, :cond_0

    .line 232
    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->access$102(Landroid/support/v4/app/FragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v7

    .line 233
    move-object v7, v5

    invoke-static {v7}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v7, v5

    invoke-static {v7}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v7

    if-nez v7, :cond_0

    .line 234
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    move-object v6, v7

    .line 235
    move-object v7, v6

    move-object v8, v5

    invoke-static {v8}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    .line 236
    move-object v7, v6

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result v7

    .line 240
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 241
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 242
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    .line 246
    move-object v0, p0

    move-object v5, v0

    invoke-super {v5}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 248
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 252
    const/4 v5, 0x0

    move-object v2, v5

    .line 253
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 254
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/FragmentTabHost$TabInfo;

    move-object v4, v5

    .line 255
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    move-object v7, v4

    invoke-static {v7}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->access$200(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->access$102(Landroid/support/v4/app/FragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 256
    move-object v5, v4

    invoke-static {v5}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-static {v5}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v5

    if-nez v5, :cond_0

    .line 257
    move-object v5, v4

    invoke-static {v5}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->access$200(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 261
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    .line 253
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 265
    :cond_1
    move-object v5, v2

    if-nez v5, :cond_2

    .line 266
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    move-object v2, v5

    .line 268
    :cond_2
    move-object v5, v2

    move-object v6, v4

    invoke-static {v6}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    goto :goto_1

    .line 275
    :cond_3
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/app/FragmentTabHost;->mAttached:Z

    .line 276
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/support/v4/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    move-object v2, v5

    .line 277
    move-object v5, v2

    if-eqz v5, :cond_4

    .line 278
    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result v5

    .line 279
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    move-result v5

    .line 281
    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 285
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    .line 286
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentTabHost;->mAttached:Z

    .line 287
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 299
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    check-cast v3, Landroid/support/v4/app/FragmentTabHost$SavedState;

    move-object v2, v3

    .line 300
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {v3, v4}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 301
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Landroid/support/v4/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 291
    move-object v0, p0

    move-object v3, v0

    invoke-super {v3}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    .line 292
    new-instance v3, Landroid/support/v4/app/FragmentTabHost$SavedState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v4/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v3

    .line 293
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v4/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    .line 294
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 306
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/app/FragmentTabHost;->mAttached:Z

    if-eqz v3, :cond_0

    .line 307
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/support/v4/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    move-object v2, v3

    .line 308
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 309
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result v3

    .line 312
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v3, :cond_1

    .line 313
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 315
    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 4

    .prologue
    .line 219
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 220
    return-void
.end method

.method public setup()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 5

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-super {v3}, Landroid/widget/TabHost;->setup()V

    .line 187
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 188
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 189
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/app/FragmentTabHost;->ensureContent()V

    .line 190
    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V
    .locals 6

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    invoke-super {v4}, Landroid/widget/TabHost;->setup()V

    .line 194
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v4/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 195
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 196
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    .line 197
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v4/app/FragmentTabHost;->ensureContent()V

    .line 198
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 202
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTabHost;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 203
    move-object v4, v0

    const v5, 0x1020012

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentTabHost;->setId(I)V

    .line 205
    :cond_0
    return-void
.end method
