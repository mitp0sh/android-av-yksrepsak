.class public Lcom/kms/privacyprotection/PPItemsStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static a:Lcom/kms/privacyprotection/PPItemsStorage; = null

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private mContacts:Ljava/util/TreeSet;

.field private mPhones:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/kms/privacyprotection/PPItemsStorage;->a:Lcom/kms/privacyprotection/PPItemsStorage;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mPhones:Ljava/util/HashSet;

    .line 62
    return-void
.end method

.method private static a()Lcom/kms/privacyprotection/PPItemsStorage;
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 33
    new-instance v1, Ljava/io/File;

    const-string v2, "ppitems.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    invoke-static {v1}, Ly;->a(Ljava/io/File;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/kms/privacyprotection/PPItemsStorage;

    .line 36
    if-nez v0, :cond_0

    new-instance v0, Lcom/kms/privacyprotection/PPItemsStorage;

    invoke-direct {v0}, Lcom/kms/privacyprotection/PPItemsStorage;-><init>()V

    :cond_0
    return-object v0
.end method

.method private a(JJ)V
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;

    .line 246
    iget-wide v2, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactID:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 247
    iput-wide p3, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactID:J

    .line 248
    invoke-virtual {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->toFile()V

    .line 250
    invoke-direct {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->b()V

    .line 254
    :cond_1
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    iget-object v1, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mPhones:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v1

    sget-object v2, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->ContactsChanged:Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->newEvent(Ljava/lang/Object;)Lvg;

    move-result-object v0

    invoke-interface {v1, v0}, Lrx;->a(Lrw;)V

    .line 180
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/kms/privacyprotection/PPItemsStorage;
    .locals 2

    .prologue
    .line 53
    const-class v1, Lcom/kms/privacyprotection/PPItemsStorage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kms/privacyprotection/PPItemsStorage;->a:Lcom/kms/privacyprotection/PPItemsStorage;

    if-nez v0, :cond_0

    .line 54
    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->a()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v0

    sput-object v0, Lcom/kms/privacyprotection/PPItemsStorage;->a:Lcom/kms/privacyprotection/PPItemsStorage;

    .line 56
    :cond_0
    sget-object v0, Lcom/kms/privacyprotection/PPItemsStorage;->a:Lcom/kms/privacyprotection/PPItemsStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public AddContact(J)V
    .locals 7

    .prologue
    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/kms/privacyprotection/PPItemsStorage;->contactInList(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 169
    invoke-static {}, LuR;->a()LuR;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, LuR;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-static {}, LuR;->a()LuR;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, LuR;->d(Landroid/content/Context;J)Ljava/util/Set;

    move-result-object v5

    .line 171
    iget-object v6, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    new-instance v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;

    check-cast v5, Ljava/util/HashSet;

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;-><init>(Lcom/kms/privacyprotection/PPItemsStorage;JLjava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->toFile()V

    .line 173
    invoke-direct {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->b()V

    .line 175
    :cond_0
    return-void
.end method

.method public addPhone(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mPhones:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mPhones:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->toFile()V

    .line 222
    invoke-direct {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->b()V

    .line 224
    :cond_0
    return-void
.end method

.method public contactInList(J)Z
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;

    .line 207
    iget-wide v2, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactID:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contactsInStorage()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    return v0
.end method

.method public getContactNameAndPhonesForId(Ljava/lang/Long;)Ljava/util/Vector;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 124
    .line 126
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;

    .line 127
    iget-wide v3, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactID:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 128
    iget-object v1, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mName:Ljava/lang/String;

    .line 129
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    iget-object v0, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactPhones:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 138
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 140
    return-object v2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public getContactNamesAndPhones()Ljava/util/Map;
    .locals 6

    .prologue
    .line 105
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 106
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;

    .line 108
    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v3, v1, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 109
    iget-object v1, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactPhones:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 110
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const-string v1, "; "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 117
    :cond_0
    iget-object v0, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 119
    :cond_1
    return-object v2
.end method

.method public getContactPhones(J)Ljava/util/Set;
    .locals 5

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;

    .line 96
    iget-wide v3, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactID:J

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    .line 97
    iget-object v0, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactPhones:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 101
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getContactsIds()Ljava/util/Vector;
    .locals 5

    .prologue
    .line 68
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 69
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;

    .line 70
    iget-wide v3, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_0
    return-object v1
.end method

.method public getPhones()Ljava/util/Set;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mPhones:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 147
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mPhones:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public itemsInStorage()I
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->phonesInStorage()I

    move-result v0

    invoke-virtual {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->contactsInStorage()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public numberInList(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mPhones:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public phonesInStorage()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mPhones:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 191
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mPhones:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 192
    invoke-virtual {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->toFile()V

    .line 193
    invoke-direct {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->b()V

    .line 194
    return-void
.end method

.method public removeContact(I)V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->toFile()V

    .line 200
    invoke-direct {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->b()V

    .line 201
    return-void
.end method

.method public removePhone(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mPhones:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->toFile()V

    .line 185
    invoke-direct {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->b()V

    .line 187
    :cond_0
    return-void
.end method

.method public syncContacts()V
    .locals 7

    .prologue
    .line 228
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 229
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 230
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;

    .line 233
    invoke-static {}, LuR;->a()LuR;

    move-result-object v3

    iget-wide v4, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactID:J

    invoke-virtual {v3, v1, v4, v5}, LuR;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mName:Ljava/lang/String;

    .line 234
    iget-object v3, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactPhones:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 235
    iget-object v3, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactPhones:Ljava/util/HashSet;

    invoke-static {}, LuR;->a()LuR;

    move-result-object v4

    iget-wide v5, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactID:J

    invoke-virtual {v4, v1, v5, v6}, LuR;->d(Landroid/content/Context;J)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 236
    iget-object v3, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactPhones:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mName:Ljava/lang/String;

    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 241
    :cond_1
    return-void
.end method

.method public declared-synchronized toFile()V
    .locals 3

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/io/File;

    const-string v2, "ppitems.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    invoke-static {v1, p0}, Ly;->a(Ljava/io/File;Ljava/io/Serializable;)Z

    move-result v0

    .line 45
    if-nez v0, :cond_0

    .line 47
    const-string v0, "KMS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t save "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateContacts(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 6

    .prologue
    .line 152
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 153
    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/kms/privacyprotection/PPItemsStorage;->a(JJ)V

    .line 152
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method

.method public updatePhone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mPhones:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mPhones:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->toFile()V

    .line 161
    invoke-direct {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->b()V

    .line 164
    :cond_0
    return-void
.end method
