.class final enum Lcom/kaspersky/components/ipm/Request$UcpStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CONNECTED:Lcom/kaspersky/components/ipm/Request$UcpStatus;

.field public static final enum DISABLED:Lcom/kaspersky/components/ipm/Request$UcpStatus;

.field public static final enum ENABLED:Lcom/kaspersky/components/ipm/Request$UcpStatus;

.field public static final enum UNSPECIFIED:Lcom/kaspersky/components/ipm/Request$UcpStatus;

.field private static final synthetic a:[Lcom/kaspersky/components/ipm/Request$UcpStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/kaspersky/components/ipm/Request$UcpStatus;

    const-string v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/components/ipm/Request$UcpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/Request$UcpStatus;->UNSPECIFIED:Lcom/kaspersky/components/ipm/Request$UcpStatus;

    .line 20
    new-instance v0, Lcom/kaspersky/components/ipm/Request$UcpStatus;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/kaspersky/components/ipm/Request$UcpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/Request$UcpStatus;->DISABLED:Lcom/kaspersky/components/ipm/Request$UcpStatus;

    .line 21
    new-instance v0, Lcom/kaspersky/components/ipm/Request$UcpStatus;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v4}, Lcom/kaspersky/components/ipm/Request$UcpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/Request$UcpStatus;->ENABLED:Lcom/kaspersky/components/ipm/Request$UcpStatus;

    .line 22
    new-instance v0, Lcom/kaspersky/components/ipm/Request$UcpStatus;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/kaspersky/components/ipm/Request$UcpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/Request$UcpStatus;->CONNECTED:Lcom/kaspersky/components/ipm/Request$UcpStatus;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kaspersky/components/ipm/Request$UcpStatus;

    sget-object v1, Lcom/kaspersky/components/ipm/Request$UcpStatus;->UNSPECIFIED:Lcom/kaspersky/components/ipm/Request$UcpStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaspersky/components/ipm/Request$UcpStatus;->DISABLED:Lcom/kaspersky/components/ipm/Request$UcpStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/components/ipm/Request$UcpStatus;->ENABLED:Lcom/kaspersky/components/ipm/Request$UcpStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/components/ipm/Request$UcpStatus;->CONNECTED:Lcom/kaspersky/components/ipm/Request$UcpStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kaspersky/components/ipm/Request$UcpStatus;->a:[Lcom/kaspersky/components/ipm/Request$UcpStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/ipm/Request$UcpStatus;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/kaspersky/components/ipm/Request$UcpStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ipm/Request$UcpStatus;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/ipm/Request$UcpStatus;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/kaspersky/components/ipm/Request$UcpStatus;->a:[Lcom/kaspersky/components/ipm/Request$UcpStatus;

    invoke-virtual {v0}, [Lcom/kaspersky/components/ipm/Request$UcpStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/ipm/Request$UcpStatus;

    return-object v0
.end method
