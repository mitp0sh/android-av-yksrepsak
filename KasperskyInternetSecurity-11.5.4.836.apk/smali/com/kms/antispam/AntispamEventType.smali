.class public enum Lcom/kms/antispam/AntispamEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BlackListChanged:Lcom/kms/antispam/AntispamEventType;

.field public static final enum ModeChanged:Lcom/kms/antispam/AntispamEventType;

.field public static final enum WhiteListChanged:Lcom/kms/antispam/AntispamEventType;

.field private static final synthetic a:[Lcom/kms/antispam/AntispamEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/kms/antispam/AntispamEventType$1;

    const-string v1, "ModeChanged"

    invoke-direct {v0, v1, v2}, Lcom/kms/antispam/AntispamEventType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antispam/AntispamEventType;->ModeChanged:Lcom/kms/antispam/AntispamEventType;

    .line 21
    new-instance v0, Lcom/kms/antispam/AntispamEventType$2;

    const-string v1, "BlackListChanged"

    invoke-direct {v0, v1, v3}, Lcom/kms/antispam/AntispamEventType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antispam/AntispamEventType;->BlackListChanged:Lcom/kms/antispam/AntispamEventType;

    .line 33
    new-instance v0, Lcom/kms/antispam/AntispamEventType$3;

    const-string v1, "WhiteListChanged"

    invoke-direct {v0, v1, v4}, Lcom/kms/antispam/AntispamEventType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antispam/AntispamEventType;->WhiteListChanged:Lcom/kms/antispam/AntispamEventType;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kms/antispam/AntispamEventType;

    sget-object v1, Lcom/kms/antispam/AntispamEventType;->ModeChanged:Lcom/kms/antispam/AntispamEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kms/antispam/AntispamEventType;->BlackListChanged:Lcom/kms/antispam/AntispamEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/antispam/AntispamEventType;->WhiteListChanged:Lcom/kms/antispam/AntispamEventType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kms/antispam/AntispamEventType;->a:[Lcom/kms/antispam/AntispamEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/kms/antispam/AntispamEventType$1;)V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Lcom/kms/antispam/AntispamEventType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/antispam/AntispamEventType;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/kms/antispam/AntispamEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/AntispamEventType;

    return-object v0
.end method

.method public static values()[Lcom/kms/antispam/AntispamEventType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/kms/antispam/AntispamEventType;->a:[Lcom/kms/antispam/AntispamEventType;

    invoke-virtual {v0}, [Lcom/kms/antispam/AntispamEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/antispam/AntispamEventType;

    return-object v0
.end method


# virtual methods
.method protected checkData(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Antispam event data must be null for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kms/antispam/AntispamEventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    return-void
.end method

.method public newEvent()Llb;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kms/antispam/AntispamEventType;->newEvent(Ljava/lang/Object;)Llb;

    move-result-object v0

    return-object v0
.end method

.method public newEvent(Ljava/lang/Object;)Llb;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/kms/antispam/AntispamEventType;->checkData(Ljava/lang/Object;)V

    .line 51
    new-instance v0, Llb;

    invoke-direct {v0, p0, p1}, Llb;-><init>(Lcom/kms/antispam/AntispamEventType;Ljava/lang/Object;)V

    return-object v0
.end method
