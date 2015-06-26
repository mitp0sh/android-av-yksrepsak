.class public final enum Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ContentString:Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

.field public static final enum ContentUrl:Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

.field private static final synthetic a:[Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

    const-string v1, "ContentUrl"

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;->ContentUrl:Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

    .line 23
    new-instance v0, Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

    const-string v1, "ContentString"

    invoke-direct {v0, v1, v3}, Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;->ContentString:Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

    sget-object v1, Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;->ContentUrl:Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;->ContentString:Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;->a:[Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;->a:[Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

    invoke-virtual {v0}, [Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

    return-object v0
.end method
