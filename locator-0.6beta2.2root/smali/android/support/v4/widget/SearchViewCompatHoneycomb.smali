.class Landroid/support/v4/widget/SearchViewCompatHoneycomb;
.super Ljava/lang/Object;
.source "SearchViewCompatHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;,
        Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getQuery(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static isIconified(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->isIconified()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isQueryRefinementEnabled(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->isQueryRefinementEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isSubmitButtonEnabled(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->isSubmitButtonEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static newOnCloseListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 71
    move-object v0, p0

    new-instance v1, Landroid/support/v4/widget/SearchViewCompatHoneycomb$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SearchViewCompatHoneycomb$2;-><init>(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)V

    move-object v0, v1

    return-object v0
.end method

.method public static newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    new-instance v1, Landroid/support/v4/widget/SearchViewCompatHoneycomb$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SearchViewCompatHoneycomb$1;-><init>(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)V

    move-object v0, v1

    return-object v0
.end method

.method public static newSearchView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    new-instance v1, Landroid/widget/SearchView;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    return-object v0
.end method

.method public static setIconified(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 97
    return-void
.end method

.method public static setMaxWidth(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setMaxWidth(I)V

    .line 121
    return-void
.end method

.method public static setOnCloseListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move-object v3, v1

    check-cast v3, Landroid/widget/SearchView$OnCloseListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 81
    return-void
.end method

.method public static setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move-object v3, v1

    check-cast v3, Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 68
    return-void
.end method

.method public static setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .locals 6

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    check-cast v3, Landroid/widget/SearchView;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 89
    return-void
.end method

.method public static setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method public static setQueryRefinementEnabled(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryRefinementEnabled(Z)V

    .line 113
    return-void
.end method

.method public static setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V
    .locals 7

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    check-cast v4, Landroid/widget/SearchView;

    move-object v2, v4

    .line 47
    move-object v4, v2

    invoke-virtual {v4}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "search"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    move-object v3, v4

    .line 49
    move-object v4, v2

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 50
    return-void
.end method

.method public static setSubmitButtonEnabled(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 104
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 105
    return-void
.end method
