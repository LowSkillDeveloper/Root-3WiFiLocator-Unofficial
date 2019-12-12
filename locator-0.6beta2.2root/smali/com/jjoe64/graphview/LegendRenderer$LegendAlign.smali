.class public final enum Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;
.super Ljava/lang/Enum;
.source "LegendRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/LegendRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LegendAlign"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

.field public static final enum BOTTOM:Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

.field public static final enum MIDDLE:Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

.field public static final enum TOP:Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 65
    new-instance v0, Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TOP"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;->TOP:Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    .line 70
    new-instance v0, Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MIDDLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;->MIDDLE:Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    .line 75
    new-instance v0, Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "BOTTOM"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;->BOTTOM:Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;->TOP:Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;->MIDDLE:Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;->BOTTOM:Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    aput-object v3, v1, v2

    sput-object v0, Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;->$VALUES:[Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    const-class v1, Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;->$VALUES:[Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    invoke-virtual {v0}, [Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    return-object v0
.end method
