.class public Landroid/support/v4/widget/SearchViewCompat;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;,
        Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;,
        Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl;,
        Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;,
        Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;,
        Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 256
    new-instance v0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    .line 262
    :goto_0
    return-void

    .line 257
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 258
    new-instance v0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    goto :goto_0

    .line 260
    :cond_1
    new-instance v0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 264
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 266
    return-void
.end method

.method static synthetic access$000()Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    return-object v0
.end method

.method public static getQuery(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 408
    move-object v0, p0

    sget-object v1, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->getQuery(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static isIconified(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 458
    move-object v0, p0

    sget-object v1, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->isIconified(Landroid/view/View;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isQueryRefinementEnabled(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 509
    move-object v0, p0

    sget-object v1, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->isQueryRefinementEnabled(Landroid/view/View;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isSubmitButtonEnabled(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 481
    move-object v0, p0

    sget-object v1, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->isSubmitButtonEnabled(Landroid/view/View;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static newSearchView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .prologue
    .line 276
    move-object v0, p0

    sget-object v1, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->newSearchView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static setIconified(Landroid/view/View;Z)V
    .locals 5

    .prologue
    .line 447
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setIconified(Landroid/view/View;Z)V

    .line 448
    return-void
.end method

.method public static setImeOptions(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 303
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setImeOptions(Landroid/view/View;I)V

    .line 304
    return-void
.end method

.method public static setInputType(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 316
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setInputType(Landroid/view/View;I)V

    .line 317
    return-void
.end method

.method public static setMaxWidth(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 517
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setMaxWidth(Landroid/view/View;I)V

    .line 518
    return-void
.end method

.method public static setOnCloseListener(Landroid/view/View;Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;)V
    .locals 5

    .prologue
    .line 376
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;->mListener:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setOnCloseListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 377
    return-void
.end method

.method public static setOnQueryTextListener(Landroid/view/View;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)V
    .locals 5

    .prologue
    .line 327
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;->mListener:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 328
    return-void
.end method

.method public static setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .locals 7

    .prologue
    .line 421
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-object v3, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    .line 422
    return-void
.end method

.method public static setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 432
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 433
    return-void
.end method

.method public static setQueryRefinementEnabled(Landroid/view/View;Z)V
    .locals 5

    .prologue
    .line 500
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setQueryRefinementEnabled(Landroid/view/View;Z)V

    .line 501
    return-void
.end method

.method public static setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V
    .locals 5

    .prologue
    .line 290
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V

    .line 291
    return-void
.end method

.method public static setSubmitButtonEnabled(Landroid/view/View;Z)V
    .locals 5

    .prologue
    .line 471
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setSubmitButtonEnabled(Landroid/view/View;Z)V

    .line 472
    return-void
.end method
