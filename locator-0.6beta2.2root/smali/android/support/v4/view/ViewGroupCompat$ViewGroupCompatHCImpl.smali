.class Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatHCImpl;
.super Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewGroupCompatHCImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
    .locals 5

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewGroupCompatHC;->setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V

    .line 52
    return-void
.end method
