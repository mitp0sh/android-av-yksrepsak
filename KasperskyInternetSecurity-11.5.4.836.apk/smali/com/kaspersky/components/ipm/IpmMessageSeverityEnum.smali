.class public final enum Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum SeverityHigh:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

.field public static final enum SeverityLow:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

.field public static final enum SeverityMedium:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

.field private static final synthetic a:[Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    const-string v1, "SeverityLow"

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityLow:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    .line 5
    new-instance v0, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    const-string v1, "SeverityMedium"

    invoke-direct {v0, v1, v3}, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityMedium:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    .line 6
    new-instance v0, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    const-string v1, "SeverityHigh"

    invoke-direct {v0, v1, v4}, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityHigh:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    sget-object v1, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityLow:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityMedium:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityHigh:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->a:[Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->a:[Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    invoke-virtual {v0}, [Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    return-object v0
.end method
