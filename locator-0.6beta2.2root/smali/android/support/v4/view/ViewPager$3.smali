.class Landroid/support/v4/view/ViewPager$3;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 4

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/view/ViewPager$3;->this$0:Landroid/support/v4/view/ViewPager;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 241
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/ViewPager$3;->this$0:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewPager;->access$000(Landroid/support/v4/view/ViewPager;I)V

    .line 242
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/ViewPager$3;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 243
    return-void
.end method
