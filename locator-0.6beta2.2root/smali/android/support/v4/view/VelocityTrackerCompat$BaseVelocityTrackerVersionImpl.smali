.class Landroid/support/v4/view/VelocityTrackerCompat$BaseVelocityTrackerVersionImpl;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"

# interfaces
.implements Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/VelocityTrackerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseVelocityTrackerVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getXVelocity(Landroid/view/VelocityTracker;I)F
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    move v0, v3

    return v0
.end method

.method public getYVelocity(Landroid/view/VelocityTracker;I)F
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    move v0, v3

    return v0
.end method
