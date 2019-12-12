.class Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/CursorAdapter;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/CursorAdapter;)V
    .locals 4

    .prologue
    .line 469
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroid/support/v4/widget/CursorAdapter;

    move-object v2, v0

    invoke-direct {v2}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/CursorAdapter;Landroid/support/v4/widget/CursorAdapter$1;)V
    .locals 5

    .prologue
    .line 469
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;-><init>(Landroid/support/v4/widget/CursorAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 472
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroid/support/v4/widget/CursorAdapter;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 473
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 474
    return-void
.end method

.method public onInvalidated()V
    .locals 3

    .prologue
    .line 478
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroid/support/v4/widget/CursorAdapter;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 479
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 480
    return-void
.end method
