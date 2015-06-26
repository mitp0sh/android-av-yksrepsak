.class public final enum Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum FINISHED:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

.field public static final enum NEW:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

.field public static final enum RUNNING:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

.field private static final synthetic a:[Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;->NEW:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    new-instance v0, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;->RUNNING:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    new-instance v0, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;->FINISHED:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    sget-object v1, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;->NEW:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;->RUNNING:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;->FINISHED:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;->a:[Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;->a:[Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    invoke-virtual {v0}, [Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    return-object v0
.end method
