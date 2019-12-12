.class Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;
.super Ljava/lang/Object;
.source "SlidingPaneLayout.java"

# interfaces
.implements Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SlidingPanelLayoutImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1304
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateChildRegion(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 8

    .prologue
    .line 1306
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    .line 1308
    return-void
.end method
