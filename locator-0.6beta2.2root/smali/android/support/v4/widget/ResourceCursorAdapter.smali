.class public abstract Landroid/support/v4/widget/ResourceCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "ResourceCursorAdapter.java"


# instance fields
.field private mDropDownLayout:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 55
    move-object v4, v0

    move-object v5, v0

    move v6, v2

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Landroid/support/v4/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput v5, v4, Landroid/support/v4/widget/ResourceCursorAdapter;->mLayout:I

    .line 56
    move-object v4, v0

    move-object v5, v1

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, v4, Landroid/support/v4/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;I)V
    .locals 11

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 94
    move-object v5, v0

    move-object v6, v0

    move v7, v2

    move-object v9, v6

    move v10, v7

    move v6, v10

    move-object v7, v9

    move v8, v10

    iput v8, v7, Landroid/support/v4/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput v6, v5, Landroid/support/v4/widget/ResourceCursorAdapter;->mLayout:I

    .line 95
    move-object v5, v0

    move-object v6, v1

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, v5, Landroid/support/v4/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .locals 11

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 77
    move-object v5, v0

    move-object v6, v0

    move v7, v2

    move-object v9, v6

    move v10, v7

    move v6, v10

    move-object v7, v9

    move v8, v10

    iput v8, v7, Landroid/support/v4/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput v6, v5, Landroid/support/v4/widget/ResourceCursorAdapter;->mLayout:I

    .line 78
    move-object v5, v0

    move-object v6, v1

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, v5, Landroid/support/v4/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 79
    return-void
.end method


# virtual methods
.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/ResourceCursorAdapter;->mDropDownLayout:I

    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/ResourceCursorAdapter;->mLayout:I

    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public setDropDownViewResource(I)V
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/ResourceCursorAdapter;->mDropDownLayout:I

    .line 130
    return-void
.end method

.method public setViewResource(I)V
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/ResourceCursorAdapter;->mLayout:I

    .line 121
    return-void
.end method
