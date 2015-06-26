.class public final Lat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

.field public g:Z


# direct methods
.method public constructor <init>(JLcom/kaspersky/components/ipm/IpmMessageSeverityEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;Z)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lat;->a:J

    .line 34
    iput-object p3, p0, Lat;->b:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    .line 35
    iput-object p4, p0, Lat;->c:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lat;->d:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lat;->e:Ljava/lang/String;

    .line 38
    iput-object p7, p0, Lat;->f:Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

    .line 39
    iput-boolean p8, p0, Lat;->g:Z

    .line 40
    return-void
.end method
