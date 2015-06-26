.class public final enum Lcom/kms/ucp/UcpEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Connected:Lcom/kms/ucp/UcpEventType;

.field public static final enum Disconnected:Lcom/kms/ucp/UcpEventType;

.field private static final synthetic a:[Lcom/kms/ucp/UcpEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/kms/ucp/UcpEventType;

    const-string v1, "Disconnected"

    invoke-direct {v0, v1, v2}, Lcom/kms/ucp/UcpEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/ucp/UcpEventType;->Disconnected:Lcom/kms/ucp/UcpEventType;

    .line 15
    new-instance v0, Lcom/kms/ucp/UcpEventType;

    const-string v1, "Connected"

    invoke-direct {v0, v1, v3}, Lcom/kms/ucp/UcpEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/ucp/UcpEventType;->Connected:Lcom/kms/ucp/UcpEventType;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kms/ucp/UcpEventType;

    sget-object v1, Lcom/kms/ucp/UcpEventType;->Disconnected:Lcom/kms/ucp/UcpEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kms/ucp/UcpEventType;->Connected:Lcom/kms/ucp/UcpEventType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kms/ucp/UcpEventType;->a:[Lcom/kms/ucp/UcpEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/ucp/UcpEventType;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/kms/ucp/UcpEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/ucp/UcpEventType;

    return-object v0
.end method

.method public static values()[Lcom/kms/ucp/UcpEventType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/kms/ucp/UcpEventType;->a:[Lcom/kms/ucp/UcpEventType;

    invoke-virtual {v0}, [Lcom/kms/ucp/UcpEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/ucp/UcpEventType;

    return-object v0
.end method


# virtual methods
.method protected final checkData(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 34
    if-eqz p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UcpEvent event data must be null for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kms/ucp/UcpEventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    return-void
.end method

.method public final newEvent()Lwn;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kms/ucp/UcpEventType;->newEvent(Ljava/lang/Object;)Lwn;

    move-result-object v0

    return-object v0
.end method

.method public final newEvent(Ljava/lang/Object;)Lwn;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/kms/ucp/UcpEventType;->checkData(Ljava/lang/Object;)V

    .line 25
    new-instance v0, Lwn;

    invoke-direct {v0, p0, p1}, Lwn;-><init>(Lcom/kms/ucp/UcpEventType;Ljava/lang/Object;)V

    return-object v0
.end method
