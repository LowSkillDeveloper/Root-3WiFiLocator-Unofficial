.class final enum Lcom/stericson/RootTools/containers/RootClass$READ_STATE;
.super Ljava/lang/Enum;
.source "RootClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootTools/containers/RootClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "READ_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/stericson/RootTools/containers/RootClass$READ_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/stericson/RootTools/containers/RootClass$READ_STATE;

.field public static final enum FOUND_ANNOTATION:Lcom/stericson/RootTools/containers/RootClass$READ_STATE;

.field public static final enum STARTING:Lcom/stericson/RootTools/containers/RootClass$READ_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 25
    new-instance v0, Lcom/stericson/RootTools/containers/RootClass$READ_STATE;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "STARTING"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/stericson/RootTools/containers/RootClass$READ_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stericson/RootTools/containers/RootClass$READ_STATE;->STARTING:Lcom/stericson/RootTools/containers/RootClass$READ_STATE;

    new-instance v0, Lcom/stericson/RootTools/containers/RootClass$READ_STATE;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FOUND_ANNOTATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/stericson/RootTools/containers/RootClass$READ_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stericson/RootTools/containers/RootClass$READ_STATE;->FOUND_ANNOTATION:Lcom/stericson/RootTools/containers/RootClass$READ_STATE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/stericson/RootTools/containers/RootClass$READ_STATE;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/stericson/RootTools/containers/RootClass$READ_STATE;->STARTING:Lcom/stericson/RootTools/containers/RootClass$READ_STATE;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/stericson/RootTools/containers/RootClass$READ_STATE;->FOUND_ANNOTATION:Lcom/stericson/RootTools/containers/RootClass$READ_STATE;

    aput-object v3, v1, v2

    sput-object v0, Lcom/stericson/RootTools/containers/RootClass$READ_STATE;->$VALUES:[Lcom/stericson/RootTools/containers/RootClass$READ_STATE;

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
    .line 25
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stericson/RootTools/containers/RootClass$READ_STATE;
    .locals 3

    .prologue
    .line 25
    move-object v0, p0

    const-class v1, Lcom/stericson/RootTools/containers/RootClass$READ_STATE;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/stericson/RootTools/containers/RootClass$READ_STATE;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lcom/stericson/RootTools/containers/RootClass$READ_STATE;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/stericson/RootTools/containers/RootClass$READ_STATE;->$VALUES:[Lcom/stericson/RootTools/containers/RootClass$READ_STATE;

    invoke-virtual {v0}, [Lcom/stericson/RootTools/containers/RootClass$READ_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stericson/RootTools/containers/RootClass$READ_STATE;

    return-object v0
.end method
