.class public final enum Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CORRECT:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

.field public static final enum INCORRECT:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

.field public static final enum NOT_INITED:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

.field private static final synthetic a:[Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    const-string v1, "NOT_INITED"

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;->NOT_INITED:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    .line 40
    new-instance v0, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    const-string v1, "INCORRECT"

    invoke-direct {v0, v1, v3}, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;->INCORRECT:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    .line 41
    new-instance v0, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    const-string v1, "CORRECT"

    invoke-direct {v0, v1, v4}, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;->CORRECT:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    sget-object v1, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;->NOT_INITED:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;->INCORRECT:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;->CORRECT:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;->a:[Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;->a:[Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    invoke-virtual {v0}, [Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    return-object v0
.end method
